class Furniture < ApplicationRecord
    belongs_to :furniture_category
    belongs_to :user
    scope :latest, -> {order created_at: :desc} 
    
    scope :for_display, -> { where(for_sale: false) } 
    scope :for_sale, -> {where(for_sale: true, status: "available") } 
    scope :sold, -> { where(for_sale: true, status: "sold") } 
    scope :available, -> { where status: "available" }
    
    has_one_attached :furniture_cover_photo
    geocoded_by :address
    after_validation :geocode, :if => :address_changed?
    has_rich_text :searchtags

end
