class Cocktail < ActiveRecord::Base
  has_many :ingredients, dependent: :destroy

  validates_presence :name
end
