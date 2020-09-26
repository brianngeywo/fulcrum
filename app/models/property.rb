class Property < ApplicationRecord
    validates :address, presence: true
    validates :price, presence: true
    belongs_to :user
    has_one_attached :property_cover_photo
    geocoded_by :address
    after_validation :geocode, :if => :address_changed?
    has_many :rentors
    scope :latest, -> {order created_at: :desc} 
    
    scope :leased, -> { where(for_sale: false, status: "leased") } 
    scope :for_sale, -> {where(for_sale: true, status: "available") } 
    scope :for_rent, -> {where(for_sale: false, status: "available") } 
    scope :sold, -> { where(for_sale: true, status: "sold") } 
    scope :available, -> { where status: "available" }
    has_rich_text :description

end
