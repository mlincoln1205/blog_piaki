class Article < ApplicationRecord
    has_many_attached :photos
    has_rich_text :rich_body
    validates :description, length: { maximum: 360,
        too_long: "%{count} characters is the maximum allowed" }

    include PgSearch::Model
    pg_search_scope :search_by_title_and_synopsis,
        against: [ :title, :description ],
        using: {
        tsearch: { prefix: true } 
        }
    
end
