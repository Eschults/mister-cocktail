class Ingredient < ActiveRecord::Base
  belongs_to :cocktail

  validates_presence :name
end
