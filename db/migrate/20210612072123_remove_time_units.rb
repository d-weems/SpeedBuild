class RemoveTimeUnits < ActiveRecord::Migration[5.1]
  def change
    remove_column :set_runs, :hours
    remove_column :set_runs, :minutes
    remove_column :set_runs, :seconds
  end
end
