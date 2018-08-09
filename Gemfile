source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.5.1'


gem 'sqlite3', groups: %w(test development), require: false
gem 'pg', groups: %w(production), require: false

gem 'rails', '~> 5.2.0'



gem "paperclip", "~> 6.0.0"

gem 'puma', '~> 3.11'

gem 'sass-rails', '~> 5.0'

gem 'uglifier', '>= 1.3.0'

gem 'coffee-rails', '~> 4.2'
gem 'turbolinks', '~> 5'
gem 'jbuilder', '~> 2.5'

gem 'bootstrap-sass', '~> 3.3.7'
gem 'data-confirm-modal'

gem 'jquery-rails'
gem 'devise'
gem 'jquery-ui-rails'

gem 'toastr-rails'
gem "omniauth", '~>1.8.1' # バージョンは任意で指定
gem "omniauth-facebook", '~> 5.0.0' # バージョンは任意で指定ください

gem 'omniauth-twitter', '~> 1.4.0'
gem 'omniauth-google-oauth2', '~> 0.5.3'


gem 'rmagick', '~> 2.16'
gem 'aws-sdk'
gem "aws-sdk-s3", require: false #追記
gem 'dropzonejs-rails'

gem 'ransack', github: 'activerecord-hackery/ransack'

gem "font-awesome-rails"
gem "private_pub"
gem "thin"


gem 'bootsnap', '>= 1.1.0', require: false

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger consolegem 'sqlite3'
  
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
end

group :development do
  # Access an interactive console on exception pages or by calling 'console' anywhere in the code.
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '>= 3.0.5', '< 3.2'
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end

#group :production do
 # gem 'pg'
#end

group :test do
  # Adds support for Capybara system testing and selenium driver
  gem 'capybara', '>= 2.15', '< 4.0'
  gem 'selenium-webdriver'
  # Easy installation and use of chromedriver to run system tests with Chrome
  gem 'chromedriver-helper'
end






# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
