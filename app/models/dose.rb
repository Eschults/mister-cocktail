class Dose < ActiveRecord::Base
  belongs_to :cocktail
  belongs_to :ingredient

  validates_presence_of :amount, :ingredient, :cocktail
end
