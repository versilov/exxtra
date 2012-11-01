source 'http://rubygems.org'

gem 'rails', '3.1.1'


# Bundle edge Rails instead:
# gem 'rails',     :git => 'git://github.com/rails/rails.git'

group :development do
  gem 'sqlite3'
end

group :production do
  gem 'pg'
end

gem 'therubyracer'  # To avoid "Could not find a javascript runtime" error
gem 'haml'
gem 'slim'
gem 'slim-rails'

gem 'activeadmin' # What for?
gem 'sass-rails'
gem "meta_search", '>= 1.1.0.pre'


# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'coffee-rails', '~> 3.1.1'
  gem 'uglifier', '>= 1.0.3'
end

gem 'jquery-rails'

# To use ActiveModel has_secure_password
# gem 'bcrypt-ruby', '~> 3.0.0'

# Use unicorn as the web server
# gem 'unicorn'

# Deploy with Capistrano
# gem 'capistrano'

# To use debugger
# gem 'ruby-debug19', :require => 'ruby-debug'

group :test do
  # Pretty printed test output
  gem 'turn', :require => false
  gem 'minitest'
end
