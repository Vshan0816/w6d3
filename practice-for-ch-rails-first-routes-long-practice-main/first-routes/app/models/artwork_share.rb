class ArtworkShare < ApplicationRecord
    validates :viewer_id, presence: true
    validates :artwork_id, presence: true

    belongs_to :viewer,
        primary_key: :id,
        foreign_key: :viewer_id,
        class_name: :User,
        inverse_of: :artwork_shares
    
    belongs_to :artwork,
        primary_key: :id, 
        foreign_key: :artwork_id,
        class_name: :Artwork,
        inverse_of: :artwork_shares
end 