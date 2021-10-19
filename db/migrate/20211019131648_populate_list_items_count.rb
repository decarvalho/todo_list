class PopulateListItemsCount < ActiveRecord::Migration[6.1]
  def up
    List.find_each do |list|
      List.reset_counters(list.id, :items)
    end
  end
end
