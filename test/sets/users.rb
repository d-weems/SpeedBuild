module Contexts
  module Users

    def create_users
      @admin       = FactoryBot.create(:user)
      @sweetdweems = FactoryBot.create(:user, :username => "sweetdweems")
    end

    def destroy_users
      @admin.destroy
      @sweetdweems.destroy
    end

  end
end