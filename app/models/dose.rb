class Dose < ActiveRecord::Base
  belongs_to :cockail
  belongs_to :ingredient

  validates :amount, presence: :true
end
