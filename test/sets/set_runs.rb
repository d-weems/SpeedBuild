module Contexts
  module SetRuns

    def create_set_runs
      @dweems_vader  = FactoryBot.create(:set_run, :lego_set => @vader, :category => @unordered,
                                         :user => @sweetdweems)
      @dweems_anakin = FactoryBot.create(:set_run, :lego_set => @anakin, :category => @unordered,
                                         :user => @sweetdweems, :milliseconds => 600000, :run_date => 2.months.ago.to_date)
      @admin_vader   = FactoryBot.create(:set_run, :lego_set => @vader, :category => @ordered,
                                         :user => @admin, :milliseconds => 915000, :run_date => 1.week.ago.to_date)  
      @admin_anakin  = FactoryBot.create(:set_run, :lego_set => @anakin, :category => @ordered,
                                         :user => @admin, :milliseconds => 630000, :run_date => 1.month.ago.to_date)
    end

    def destroy_set_runs
      @dweems_vader.destroy
      @dweems_anakin.destroy
      @admin_vader.destroy
      @admin_anakin.destroy
    end

  end
end