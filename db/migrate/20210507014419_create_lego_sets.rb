class CreateLegoSets < ActiveRecord::Migration[5.1]
  def change
    create_table :lego_sets do |t|
      t.string :set_number
      t.string :name
      t.integer :piece_count

      t.timestamps
    end
  end
end
