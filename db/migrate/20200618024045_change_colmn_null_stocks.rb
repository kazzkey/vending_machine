class ChangeColmnNullStocks < ActiveRecord::Migration[5.2]
  def change
    change_column :stocks, :name, :string, null: false
    change_column :stocks, :price, :integer, null: false
    change_column :stocks, :count, :integer, null: false
  end
end
