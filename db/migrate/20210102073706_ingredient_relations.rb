class IngredientRelations < ActiveRecord::Migration[6.0]
  def change
    drop_table :ingredient_relations
  end
end
