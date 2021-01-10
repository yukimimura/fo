class AddPeopleToIngredients < ActiveRecord::Migration[6.0]
  def change
    add_column :ingredients, :people, :integer
  end
end
