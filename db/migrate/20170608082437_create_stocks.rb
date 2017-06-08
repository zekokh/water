class CreateStocks < ActiveRecord::Migration[5.0]
  def change
    create_table :stocks do |t|
      t.integer :pure_water
      t.integer :empty_bottle
      t.integer :dirty_bottle
      t.string :who_makes_changes

      t.timestamps
    end
  end
end
