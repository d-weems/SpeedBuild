require 'test_helper'

class SetRunTest < ActiveSupport::TestCase
  should belong_to(:category)
  should belong_to(:lego_set)
  should belong_to(:user)

  should validate_presence_of(:milliseconds)
  should validate_presence_of(:category_id)
  should validate_presence_of(:lego_set_id)
  should validate_presence_of(:user_id)

  should allow_value(Date.current).for(:run_date)
  should allow_value(3.days.ago.to_date).for(:run_date)
  should allow_value(2.months.ago.to_date).for(:run_date)
  should allow_value(1.year.ago.to_date).for(:run_date)

  should_not allow_value(10).for(:run_date)
  should_not allow_value(nil).for(:run_date)
  should_not allow_value(1.day.from_now.to_date).for(:run_date)

  context "Creating 4 Set Runs" do
    
    setup do
      create_lego_sets
      create_categories
      create_users
      create_set_runs
    end

    teardown do
      destroy_set_runs
      destroy_users
      destroy_categories
      destroy_lego_sets
    end

    should "have scope that shows all runs by fastest time" do
      assert_equal 4, SetRun.by_time.size
      assert_equal [["7669", "sweetdweems"],["7669", "admin"],["8017", "sweetdweems"],["8017", "admin"]], SetRun.by_time.map{|s| [s.lego_set.set_number, s.user.username]}
    end

  end
end
