class Recipe < ApplicationRecord
  belongs_to :user
  has_many :steps, dependent: :destroy

  has_many :ingredient_relations, dependent: :destroy
  has_many :myingredient, through: :ingredient_relations, source: :ingredient
end
