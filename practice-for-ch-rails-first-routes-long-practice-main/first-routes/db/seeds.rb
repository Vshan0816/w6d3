# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
#
    akash = User.create(user[username]="akash")
    vincent = User.create(user[username]="vincent")
    kyle = User.create(user[username]="kyle")

    starry_night = Artwork.create(artwork[title]= "starry_night", artwork[image_url]="starry_night.example.com", artwork[artist_id]="1")
    mona_lisa = Artwork.create(artwork[title]= "mona_lisa", artwork[image_url]="mona_lisa.example.com", artwork[artist_id]="2")
    batman = Artwork.create(artwork[title]= "batman", artwork[image_url]="batman.example.com", artwork[artist_id]="3")
    superman = Artwork.create(artwork[title]= "superman", artwork[image_url]="superman.example.com", artwork[artist_id]="1")

    share1 = ArtworkShare.create(artwork_share[viewer_id] = 1, artwork_share[artwork_id] = 1 )
    share2 = ArtworkShare.create(artwork_share[viewer_id] = 2, artwork_share[artwork_id] = 1 )
    share3 = ArtworkShare.create(artwork_share[viewer_id] = 3, artwork_share[artwork_id] = 1 )
    share4 = ArtworkShare.create(artwork_share[viewer_id] = 1, artwork_share[artwork_id] = 2 )
    share5 = ArtworkShare.create(artwork_share[viewer_id] = 2, artwork_share[artwork_id] = 2 )
    share6 = ArtworkShare.create(artwork_share[viewer_id] = 2, artwork_share[artwork_id] = 3 )
    share7 = ArtworkShare.create(artwork_share[viewer_id] = 3, artwork_share[artwork_id] = 3 )
    share8 = ArtworkShare.create(artwork_share[viewer_id] = 1, artwork_share[artwork_id] = 4 )
