class WeightClass < ApplicationRecord
  has_many :wrestlers, dependent: :destroy

end
