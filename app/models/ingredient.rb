class Ingredient < ApplicationRecord
  has_many :ingredient_relations, dependent: :destroy
  has_many :myrecipe, through: :ingredient_relations, source: :recipe
end
