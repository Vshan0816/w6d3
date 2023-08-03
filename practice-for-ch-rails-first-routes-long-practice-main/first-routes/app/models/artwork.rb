class Artwork < ApplicationRecord
   

    validates :title, presence: true
    validates :image_url, presence: true, uniqueness: true
    validates :artist_id, presence: true
    validates :title, uniqueness: {scope: :artist_id, message: "artist can not have 2 pieces of same title"}

    belongs to: artist,
        primary_key: :id,
        foreign_key: :artist_id,
        class_name: :User
end