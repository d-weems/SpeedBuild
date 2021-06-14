require './test/sets/categories'
require './test/sets/lego_sets'
require './test/sets/users'
require './test/sets/set_runs'

module Contexts
  include Contexts::Categories
  include Contexts::LegoSets
  include Contexts::Users
  include Contexts::SetRuns

  def create_all
    create_categories
    create_lego_sets
    create_users
    create_set_runs
  end
end