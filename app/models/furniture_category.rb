class FurnitureCategory < ApplicationRecord
    has_rich_text :searchtags
    has_many :furnitures
end
