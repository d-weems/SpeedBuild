module Contexts
  module LegoSets

    def create_lego_sets
      @vader  = FactoryBot.create(:lego_set)
      @anakin = FactoryBot.create(:lego_set, :set_number => "7669"
                                  :name => "Anakin's Jedi Starfigher", :piece_count => 153)
    end

    def destroy_lego_sets
      @vader.destroy
      @anakin.destroy
    end

  end
end