class CreateFoods < ActiveRecord::Migration[6.0]
  def change
    create_table :foods do |t|
      t.string :food
      t.integer :fod

      t.timestamps
    end
  end
end
