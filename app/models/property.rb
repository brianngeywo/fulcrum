class Property < ApplicationRecord
    belongs_to :user
    has_one_attached :property_cover_photo

    scope :latest, -> {order created_at: :desc} 
    
    scope :leased, -> { where(for_sale: false, status: "leased") } 
    scope :for_sale, -> {where(for_sale: true, status: "available") } 
    scope :for_rent, -> {where(for_sale: false, status: "available") } 
    scope :sold, -> { where(for_sale: true, status: "sold") } 
    scope :available, -> { where status: "available" } 
end
