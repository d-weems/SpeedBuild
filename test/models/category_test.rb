require 'test_helper'

class CategoryTest < ActiveSupport::TestCase
  should have_many(:set_runs)

  should validate_presence_of(:name)
  should validate_presence_of(:description)

  context "Creating 2 Categories" do
    
    setup do
      create_categories
    end

    teardown do
      destroy_categories
    end

    should "validate uniqueness of category name" do
      ordered2 = FactoryBot.build(:category)
      deny ordered2.valid?
    end

  end
end
