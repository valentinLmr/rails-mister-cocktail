class Dose < ApplicationRecord
  belongs_to :cocktail
  belongs_to :ingredient
  validates :ingredient_id, presence: true
  validates_uniqueness_of :cocktail, scope: [:ingredient]
end
