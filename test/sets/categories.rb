module Contexts
  module Categories

    def create_categories
      @ordered   = FactoryBot.create(:category)
      @unordered = FactoryBot.create(:category, :name => "Unordered",
                                     :description => "Unassisted set construction following any build order the runner prefers.")
    end

    def destroy_categories
      @ordered.destroy
      @unordered.destroy
    end

  end
end