source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

#ruby '2.5.1'


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
gem 'rails-erd', group: :development
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
gem 'rails-i18n'

group :development, :test do  
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
  gem 'hirb'   
  gem 'hirb-unicode'
  gem 'pry-rails'  
  gem 'pry-doc'   
  gem 'pry-byebug'
  gem 'awesome_print'
end

group :development do
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '>= 3.0.5', '< 3.2'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end

#group :production do
 # gem 'pg'
#end

group :test do
  gem 'capybara', '>= 2.15', '< 4.0'
  gem 'selenium-webdriver'
  gem 'chromedriver-helper'
end

gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
