class AddItemsCountToLists < ActiveRecord::Migration[6.1]
  def change
    add_column :lists, :items_count, :integer
  end
end
