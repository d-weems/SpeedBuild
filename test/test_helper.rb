require 'simplecov'
SimpleCov.start 'rails'
ENV["RAILS_ENV"] = "test"
require File.expand_path("../../config/environment", __FILE__)
require "rails/test_help"
require "minitest"
require "minitest/rails"
require 'minitest/reporters'
require 'minitest_extensions'
require 'contexts'

# To add Capybara feature tests add `gem "minitest-rails-capybara"`
# to the test group in the Gemfile and uncomment the following:
# require "minitest/rails/capybara"

# Uncomment for awesome colorful output
# require "minitest/pride"

class ActiveSupport::TestCase
  # Setup all fixtures in test/fixtures/*.yml for all tests in alphabetical order.
  #fixtures :all
  # Add more helper methods to be used by all tests here...
  include Contexts

  def deny(condition, msg="")
    # a simple transformation to increase readability IMO
    assert !condition, msg
  end

  Minitest::Reporters.use! [Minitest::Reporters::SpecReporter.new]
end
