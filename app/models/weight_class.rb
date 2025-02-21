class WeightClass < ApplicationRecord
  has_many :wrestlers, dependent: :destroy

  validates :wc, 
    presence: true,
    numericality: { only_integer: true},
    inclusion: {
      in: 97..285,
      message: 'must be between 97 and 285 pounds'
    }

end
