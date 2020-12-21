class CreateIngredientRelations < ActiveRecord::Migration[6.0]
  def change
    create_table :ingredient_relations do |t|
      t.references :recipe, null: false, foreign_key: true
      t.references :ingredient, null: false, foreign_key: true
      t.string :amount

      t.timestamps
      t.index [:recipe_id, :ingredient_id], unique: true
    end
  end
end
