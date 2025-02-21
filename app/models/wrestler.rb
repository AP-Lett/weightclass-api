class Wrestler < ApplicationRecord
  belongs_to :weight_class

  validates :name,
    presence: true

  validates :age, 
    presence: true, 
    numericality: { only_integer: true}, 
    inclusion: {
      in: 13..18,
      message: 'must be between the ages of 13 to 18'
    }

  validates :gender, 
    presence: true
end
