class Property < ApplicationRecord
    belongs_to :user
    has_one_attached :property_cover_photo
end
