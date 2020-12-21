class RenameFoodColumnToFoods < ActiveRecord::Migration[6.0]
  def change
    rename_column :foods, :food, :name
  end
end
