class Dose < ApplicationRecord
  belongs_to :cocktail
  belongs_to :ingredient
  validates :description, presence: true
  validates_uniqueness_of :ingredient, scope: :cocktail 
end

#Rails will know that when there is an id from another table (foreign_key), it is referring to that object e.g. ingredient_id is just ingredient