class Cocktail < ApplicationRecord
  has_many :doses, dependent: :destroy
  has_many :ingredients, through: :doses, dependent: :destroy
  validates :name, uniqueness: true, presence: true
  validates :image_url, presence: true
end
