source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '3.0.1'

gem 'rails', '~> 6.1.4'
gem 'pg', '~> 1.1'
gem 'puma', '~> 5.0'
gem 'sass-rails', '>= 6'
gem 'webpacker', '~> 5.0'
gem 'bootsnap', '>= 1.4.4', require: false

gem 'devise'
gem 'carrierwave' # Upload files
gem 'fog-aws' # Ruby cloud services library
gem 'mini_magick' # Image resize

group :development, :test do
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
end

group :development do
  gem 'web-console', '>= 4.1.0'
  #gem 'rack-mini-profiler', '~> 2.0'
  gem 'listen', '~> 3.3'
  gem 'spring'

  gem 'annotate'
  gem 'figaro' # local environment variables
  gem 'rails-erd' # Generate Entity-Relationship Diagrams
end

gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
