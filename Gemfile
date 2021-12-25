# frozen_string_literal: true

source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '3.0.3'
gem 'importmap-rails'
gem 'jbuilder'
gem 'pg', '~> 1.1'
gem 'puma', '~> 5.0'
gem 'rails', '~> 7.0.0'
gem 'redis', '~> 4.0'
gem 'sprockets-rails'
gem 'stimulus-rails'
gem 'turbo-rails'

gem 'anycable-rails', '~> 1.2'
gem 'anycable-rails-jwt', '~> 0.1.0'
gem 'bootsnap', require: false
gem 'haml-rails', '~> 2.0'
gem 'propshaft', '~> 0.4.4'
gem 'tailwindcss-rails', '~> 2.0'
gem 'tzinfo-data', platforms: %i[mingw mswin x64_mingw jruby]

group :development, :test do
  gem 'debug', platforms: %i[mri mingw x64_mingw]
end

group :development do
  # Use console on exceptions pages [https://github.com/rails/web-console]
  gem 'html2haml', '~> 2.2'
  gem 'web-console'
end

group :test do
  gem 'capybara'
  gem 'selenium-webdriver'
  gem 'webdrivers'
end
