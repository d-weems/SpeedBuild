require 'test_helper'

class LegoSetTest < ActiveSupport::TestCase
  should have_many(:set_runs)

  should validate_presence_of(:set_number)
  should validate_presence_of(:name)
  should validate_presence_of(:piece_count)

  context "Creating 2 Lego Sets" do
    
    setup do
      create_lego_sets
    end

    teardown do
      destroy_lego_sets
    end

    should "validate that set numbers are unique" do
      vader2 = FactoryBot.build(:lego_set)
      deny vader2.valid?
    end

    should "have scope showing all sets in alphabetical order" do
      assert_equal 2, LegoSet.all.size
      assert_equal ["Anakin's Jedi Starfighter", "Darth Vader's TIE Fighter"], LegoSet.alphabetical.map{|l| l.name}
    end

    should "have scope showing all sets in piece count order" do
      assert_equal 2, LegoSet.all.size
      assert_equal ["Darth Vader's TIE Fighter", "Anakin's Jedi Starfighter"], LegoSet.by_pieces.map{|l| l.name}
    end

  end
end
