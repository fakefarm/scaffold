source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end

# MY GEMS

gem 'pundit' # authorization
gem 'active_model_serializers' # JSON mgmt

group :development, :test do
  gem 'rspec-rails', '~> 3.6' # Testing related
  gem 'factory_girl_rails' # Testing related
  gem 'faker' # Testing related
  gem 'guard' # Testing related
end

group :development do
  gem 'guard-rspec', require: false # Testing related
  gem 'terminal-notifier-guard' # Testing related
  gem 'pry-rails' # Debugger
  gem 'pry-doc' # Debugger
  gem 'spring-commands-rspec' # Testing related
end

group :test do
  gem 'shoulda-matchers', git: 'https://github.com/thoughtbot/shoulda-matchers.git', branch: 'rails-5' # Testing related
end

# Standard Gems

gem 'rails', '~> 5.1.3'
gem 'sqlite3'
gem 'sass-rails', '~> 5.0'
gem 'uglifier', '>= 1.3.0'
gem 'turbolinks', '~> 5'
gem 'jbuilder', '~> 2.5'
gem 'puma', '~> 3.7'

group :development, :test do
  gem 'selenium-webdriver'
  gem 'capybara', '~> 2.13'
end

group :development do
  gem 'listen', '>= 3.0.5', '< 3.2'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end
