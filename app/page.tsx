import Link from 'next/link'

export default function HomePage() {
  return (
    <div className="min-h-screen bg-gradient-to-br from-orange-400 via-red-400 to-pink-400">
      <div className="container mx-auto px-4 py-16">
        <div className="text-center">
          <h1 className="text-6xl font-bold text-white mb-6">
            🌭 Hot Dog Detector
          </h1>
          <p className="text-xl text-white mb-8 max-w-2xl mx-auto">
            Upload or take a photo and instantly find out if it contains a hot dog! 
            Our AI-powered image recognition gives you a simple yes or no answer in seconds.
          </p>
          
          <div className="bg-white rounded-lg shadow-2xl p-8 max-w-lg mx-auto mb-12">
            <h2 className="text-2xl font-bold text-gray-800 mb-4">How it works</h2>
            <div className="space-y-4">
              <div className="flex items-center space-x-3">
                <div className="w-8 h-8 bg-orange-500 rounded-full flex items-center justify-center text-white font-bold">1</div>
                <span className="text-gray-700">Upload or take a photo</span>
              </div>
              <div className="flex items-center space-x-3">
                <div className="w-8 h-8 bg-orange-500 rounded-full flex items-center justify-center text-white font-bold">2</div>
                <span className="text-gray-700">AI analyzes your image</span>
              </div>
              <div className="flex items-center space-x-3">
                <div className="w-8 h-8 bg-orange-500 rounded-full flex items-center justify-center text-white font-bold">3</div>
                <span className="text-gray-700">Get instant yes/no result</span>
              </div>
            </div>
          </div>

          <div className="space-x-4">
            <Link 
              href="/signup" 
              className="inline-block bg-white text-orange-600 px-8 py-3 rounded-lg font-semibold hover:bg-gray-100 transition-colors"
            >
              Get Started
            </Link>
            <Link 
              href="/login" 
              className="inline-block border-2 border-white text-white px-8 py-3 rounded-lg font-semibold hover:bg-white hover:text-orange-600 transition-colors"
            >
              Sign In
            </Link>
          </div>
        </div>
      </div>
    </div>
  )
}