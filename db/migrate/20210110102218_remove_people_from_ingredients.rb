class RemovePeopleFromIngredients < ActiveRecord::Migration[6.0]
  def change
    remove_column :ingredients, :people, :integer
  end
end
