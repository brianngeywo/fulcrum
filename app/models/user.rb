class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :trackable, :confirmable

  has_many :furnitures
  has_many :properties
  has_one_attached :business_reg_certificate
  has_one_attached :identity_card_front
  has_one_attached :identity_card_back
  has_one_attached :company_logo

end
