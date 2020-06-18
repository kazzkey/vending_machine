class CreateStocks < ActiveRecord::Migration[5.2]
  def change
    create_table :stocks do |t|
      t.string :name
      t.integer :price
      t.integer :count

      t.timestamps
    end
  end
end
