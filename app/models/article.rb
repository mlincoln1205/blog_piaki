class Article < ApplicationRecord
    has_many_attached :photos
    has_rich_text :rich_body
    validates :description, length: { maximum: 360,
        too_long: "%{count} characters is the maximum allowed" }
end
