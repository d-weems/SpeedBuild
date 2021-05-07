class CreateSetRuns < ActiveRecord::Migration[5.1]
  def change
    create_table :set_runs do |t|
      t.references :lego_set_id, foreign_key: true
      t.references :category_id, foreign_key: true
      t.references :user_id, foreign_key: true
      t.integer :hours
      t.integer :minutes
      t.integer :seconds
      t.integer :milliseconds
      t.date :run_date

      t.timestamps
    end
  end
end
