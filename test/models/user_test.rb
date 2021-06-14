require 'test_helper'

class UserTest < ActiveSupport::TestCase
  should have_many(:set_runs)

  should have_secure_password

  should validate_presence_of(:username)

  context "Creating 2 Users" do
    
    setup do
      create_users
    end

    teardown do
      destroy_users
    end

    should "validate uniqueness of usernames" do
      admin2 = FactoryBot.build(:user)
      deny admin2.valid?
    end

    # should "have toggle_active method" do

    # end



  end
end
