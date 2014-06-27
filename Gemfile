require 'rbconfig'                                                                                             

source 'https://rubygems.org'
ruby '1.9.3'
#ruby-gemset=railstutorial_rails_4_0

if RbConfig::CONFIG['target_os'] =~ /mswin|mingw|cygwin/i
  #gem 'wdm', '>= 0.1.0'
  #APARENTEMENTE, NÃO PRECISO DESSA BOSTA!
  gem 'rb-notifu', '0.0.4'
end

gem 'rails', '4.0.5'

gem 'bootstrap-sass', '2.3.2.0'
#Framework for CSS
gem 'sprockets', '2.11.0'
#Asset organizer
gem 'bcrypt-ruby', '3.1.2'
#Hash function (cryptography)

group :development, :test do
  gem 'sqlite3', '1.3.8'
  #Test Database
  gem 'rspec-rails', '2.13.1'
  #Rspec (tests with Ruby)
  gem 'guard-rspec', '2.5.0'
  #Monitor (if sth changes, it will start the Rspecs tests)
  gem 'spork-rails', '4.0.0'
  #Pre-Load Rspec
  gem 'guard-spork', '1.5.0'
  
  gem 'childprocess', '0.3.6'
  
  gem 'ruby-debug-base19x', '>= 0.11.30.pre10'
  gem 'ruby-debug-ide', '0.4.23.beta1'
  #IDE debugger (for Aptana)
end

group :test do
  gem 'selenium-webdriver', '2.35.1'
  gem 'capybara', '2.1.0'
  #Uses Rspec for web pages
  gem 'factory_girl_rails', '4.2.0'
  #Factoring data to use in tests (Rspec)
end

gem 'sass-rails', '4.0.1'
#CSS Preprocessor for Rails
gem 'uglifier', '2.1.1'
gem 'coffee-rails', '4.0.1'
#Javascript compiler (Coffeescript)
gem 'jquery-rails', '3.0.4'
gem 'turbolinks', '1.1.1'
gem 'jbuilder', '1.0.2'
gem 'sass', '3.3.8'
#CSS Preprocessor

group :doc do
  gem 'sdoc', '0.3.20', require: false
end

group :production do
  gem 'pg', '0.15.1'
  #Postgree SQL
  gem 'rails_12factor', '0.0.2'
end