class Recipe < ApplicationRecord
  validates :title, presence: true, length: {maximum: 20}
  validates :description, presence: true, length: {maximum: 60}

  belongs_to :user

  has_many :ingredients, dependent: :destroy
  accepts_nested_attributes_for :ingredients, allow_destroy: true

  has_many :steps, dependent: :destroy
  accepts_nested_attributes_for :steps, allow_destroy: true

  has_many :favorites, dependent: :destroy

  mount_uploader :image, ImageUploader
end
