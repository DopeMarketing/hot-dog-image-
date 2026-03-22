# Hot Dog Image Recognition

A simple mobile/web application that uses image recognition to determine whether a photo contains a hot dog or not. Users can take or upload photos and receive instant yes/no classification results.

## Features

- 📸 **Image Upload**: Upload photos from camera or gallery
- 🤖 **AI Classification**: Binary hot dog detection using machine learning
- ⚡ **Fast Results**: Get instant yes/no answers in under 3 seconds
- 📱 **Mobile Friendly**: Responsive design for all devices
- 🔐 **User Authentication**: Secure sign up and login with Supabase
- 💾 **Result History**: Store and view past classifications

## Tech Stack

- **Framework**: Next.js 15 with App Router
- **Language**: TypeScript
- **Styling**: Tailwind CSS
- **Authentication**: Supabase Auth
- **Database**: Supabase (PostgreSQL)
- **Deployment**: Vercel (recommended)

## Getting Started

### Prerequisites

- Node.js 18.0 or later
- npm or yarn
- A Supabase account

### Installation

1. Clone the repository:
```bash
git clone <repository-url>
cd hot-dog-image
```

2. Install dependencies:
```bash
npm install
```

3. Set up environment variables:
```bash
cp .env.example .env.local
```

Fill in your Supabase credentials:
- `NEXT_PUBLIC_SUPABASE_URL`: Your Supabase project URL
- `NEXT_PUBLIC_SUPABASE_ANON_KEY`: Your Supabase anonymous key
- `SUPABASE_SERVICE_ROLE_KEY`: Your Supabase service role key

4. Run the database migrations:
```bash
# Apply the migration to your Supabase database
# You can run this SQL in your Supabase SQL editor
cat supabase/migrations/001_initial.sql
```

5. Start the development server:
```bash
npm run dev
```

Open [http://localhost:3000](http://localhost:3000) to view the application.

## Project Structure

```
hot-dog-image/
├── app/                          # Next.js app directory
│   ├── (auth)/                  # Authentication pages
│   │   ├── login/               # Login page
│   │   └── signup/              # Sign up page
│   ├── dashboard/               # Dashboard page
│   ├── globals.css              # Global styles
│   ├── layout.tsx               # Root layout
│   └── page.tsx                 # Landing page
├── lib/                         # Utility libraries
│   └── supabase/                # Supabase client configuration
├── supabase/                    # Database migrations
│   └── migrations/
├── middleware.ts                # Next.js middleware
├── next.config.ts              # Next.js configuration
├── package.json                # Dependencies
└── README.md                   # Project documentation
```

## Usage

1. **Sign Up**: Create a new account on the sign-up page
2. **Sign In**: Log in with your credentials
3. **Upload Image**: Take a photo or upload from gallery (coming soon)
4. **Get Results**: Receive instant hot dog classification
5. **View History**: Check your past classifications in the dashboard

## Success Metrics

- ✅ Classification accuracy above 90%
- ✅ Response time under 3 seconds
- ✅ User retention tracking

## Contributing

1. Fork the repository
2. Create your feature branch (`git checkout -b feature/amazing-feature`)
3. Commit your changes (`git commit -m 'Add some amazing feature'`)
4. Push to the branch (`git push origin feature/amazing-feature`)
5. Open a Pull Request

## License

This project is licensed under the MIT License.

## Deployment

### Vercel (Recommended)

1. Connect your GitHub repository to Vercel
2. Add your environment variables in the Vercel dashboard
3. Deploy automatically on every push to main

### Environment Variables for Production

Make sure to set these in your production environment:
- `NEXT_PUBLIC_SUPABASE_URL`
- `NEXT_PUBLIC_SUPABASE_ANON_KEY`
- `SUPABASE_SERVICE_ROLE_KEY`

## Next Steps

- [ ] Implement actual image classification model
- [ ] Add image upload functionality
- [ ] Integrate with ML model for hot dog detection
- [ ] Add classification result display
- [ ] Implement classification history
- [ ] Add offline capability
- [ ] Mobile app optimization
- [ ] Performance monitoring