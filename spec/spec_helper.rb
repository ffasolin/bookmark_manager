ENV['RACK_ENV'] = 'test'

require 'simplecov'
require 'simplecov-console'
#require './spec/feature/web_helpers'
require 'capybara'
require 'capybara/rspec'
require 'rspec'
require './app/app'
require './app/models/link'
require 'database_cleaner'

DatabaseCleaner.strategy = :truncation

Capybara.app = BookmarkManager

SimpleCov.formatter = SimpleCov::Formatter::MultiFormatter.new([
  SimpleCov::Formatter::Console,
  # Want a nice code coverage website? Uncomment this next line!
  # SimpleCov::Formatter::HTMLFormatter
])
SimpleCov.start


# require File.join(File.dirname(__FILE__), '..', 'app.rb')


RSpec.configure do |config|

  config.before(:suite) do
    DatabaseCleaner.strategy = :transaction
     DatabaseCleaner.clean_with(:truncation)
   end
   config.before(:each) do
     DatabaseCleaner.start
   end
   config.after(:each) do
       DatabaseCleaner.clean
   end

  # config.before(:suite) do
  #   DatabaseCleaner.strategy = :transaction
  #   DatabaseCleaner.clean_with(:truncation)
  # end
  #
  # config.around(:each) do
  #   DatabaseCleaner.start
  # end
  #
  # config.after(:suite) do
  #   DatabaseCleaner.clean
  # end

  config.expect_with :rspec do |expectations|
    expectations.include_chain_clauses_in_custom_matcher_descriptions = true
    config.include Capybara::DSL
  end

  config.mock_with :rspec do |mocks|
    mocks.verify_partial_doubles = true
  end

  config.shared_context_metadata_behavior = :apply_to_host_groups
end
