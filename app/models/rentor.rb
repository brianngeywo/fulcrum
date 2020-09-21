class Rentor < ApplicationRecord
  belongs_to :property
  validates :rentor_phone_number, presence: true
  
  

  
end
