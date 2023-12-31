class Comment < ApplicationRecord
    validates :body, presence: true 

    belongs_to :author,
        primary_key: :id,
        foreign_key: :author_id,
        class_name: "User" 
    
    belongs_to :artwork,
        primary_key: :id,
        foreign_key: :artwork_id,
        class_name: 'Artwork'

end 
