class AddPeopleToRecipes < ActiveRecord::Migration[6.0]
  def change
    add_column :recipes, :people, :integer
  end
end
