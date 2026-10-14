source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '>= 3.0.0'

gem 'rails', '~> 7.1.0'
gem 'sprockets-rails'
gem 'puma', '~> 6.0'
gem 'bootsnap', require: false
gem 'mysql2'

group :development, :test do
  gem 'rspec-rails'
  gem 'shoulda-matchers'
  gem 'capybara'
  gem 'debug', platforms: %i[ mri windows ]
end

group :development do
  gem 'web-console'
end
