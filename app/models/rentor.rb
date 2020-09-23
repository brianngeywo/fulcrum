class Rentor < ApplicationRecord
  belongs_to :property
  validates :name, presence: true
  validates :phone_number, presence: true
  
end
