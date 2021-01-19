class ChangeDatatypePeopleOfRecipes < ActiveRecord::Migration[6.0]
  def change
    change_column :recipes, :people, :string
  end
end
