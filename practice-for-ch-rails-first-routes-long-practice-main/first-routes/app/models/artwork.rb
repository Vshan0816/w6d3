class Artwork < ApplicationRecord
   

    validates :title, presence: true
    validates :image_url, presence: true, uniqueness: true
    validates :artist_id, presence: true
    validates :title, uniqueness: {scope: :artist_id, message: "artist can not have 2 pieces of same title"}

    belongs_to :artist,
        primary_key: :id, 
        foreign_key: :artist_id,
        class_name: :User
    
    has_many :artwork_shares,
        primary_key: :id, 
        foreign_key: :artwork_id,
        class_name: :ArtworkShare, 
        inverse_of: :artwork
        dependent: :destroy
        
    has_many :shared_viewers,
        through: :artwork_shares, 
        source: :viewer 

    def self.artworks_for_user_id(user_id)
        @artwork = Artwork
        .select('distinct(artworks.title)')
        .joins(:artwork_shares)
        .where("artworks.artist_id = #{user_id} OR artwork_shares.viewer_id = #{user_id}") 
    end    
end