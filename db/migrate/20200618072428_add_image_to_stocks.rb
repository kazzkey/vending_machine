class AddImageToStocks < ActiveRecord::Migration[5.2]
  def change
    add_column :stocks, :image, :string, null: false
  end
end
