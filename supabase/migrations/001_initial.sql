-- Create image_classifications table for storing hot dog detection results
CREATE TABLE image_classifications (
  id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
  user_id UUID REFERENCES auth.users(id) ON DELETE CASCADE NOT NULL,
  image_url TEXT NOT NULL,
  is_hot_dog BOOLEAN NOT NULL,
  confidence_score DECIMAL(5,4),
  created_at TIMESTAMPTZ DEFAULT NOW() NOT NULL,
  updated_at TIMESTAMPTZ DEFAULT NOW() NOT NULL
);

-- Create an index on user_id for faster queries
CREATE INDEX idx_image_classifications_user_id ON image_classifications(user_id);

-- Create an index on created_at for sorting
CREATE INDEX idx_image_classifications_created_at ON image_classifications(created_at DESC);

-- Set up Row Level Security (RLS)
ALTER TABLE image_classifications ENABLE ROW LEVEL SECURITY;

-- Create policy to allow users to see only their own classifications
CREATE POLICY "Users can view own classifications" ON image_classifications
  FOR SELECT USING (auth.uid() = user_id);

-- Create policy to allow users to insert their own classifications
CREATE POLICY "Users can insert own classifications" ON image_classifications
  FOR INSERT WITH CHECK (auth.uid() = user_id);

-- Create policy to allow users to update their own classifications
CREATE POLICY "Users can update own classifications" ON image_classifications
  FOR UPDATE USING (auth.uid() = user_id);

-- Create policy to allow users to delete their own classifications
CREATE POLICY "Users can delete own classifications" ON image_classifications
  FOR DELETE USING (auth.uid() = user_id);

-- Function to automatically update updated_at column
CREATE OR REPLACE FUNCTION update_updated_at_column()
RETURNS TRIGGER AS $$
BEGIN
  NEW.updated_at = NOW();
  RETURN NEW;
END;
$$ language 'plpgsql';

-- Trigger to automatically update updated_at column
CREATE TRIGGER update_image_classifications_updated_at 
  BEFORE UPDATE ON image_classifications 
  FOR EACH ROW EXECUTE FUNCTION update_updated_at_column();