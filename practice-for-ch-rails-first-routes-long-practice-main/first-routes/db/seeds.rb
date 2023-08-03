# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
#
    akash = User.create(username: "akash")
    vincent = User.create(username: "vincent")
    kyle = User.create(username: "kyle")

    starry_night = Artwork.create(title: "starry_night", image_url: "starry_night.example.com", artist_id: 1)
    mona_lisa = Artwork.create(title: "mona_lisa", image_url: "mona_lisa.example.com", artist_id: 2)
    batman = Artwork.create(title:"batman", image_url: "batman.example.com", artist_id: 3)
    superman = Artwork.create(title: "superman", image_url: "superman.example.com", artist_id: 1)

    share1 = ArtworkShare.create(viewer_id: 1, artwork_id:  1 )
    share2 = ArtworkShare.create(viewer_id: 2, artwork_id: 1 )
    share3 = ArtworkShare.create(viewer_id: 3, artwork_id: 1 )
    share4 = ArtworkShare.create(viewer_id: 1, artwork_id: 2 )
    share5 = ArtworkShare.create(viewer_id: 2, artwork_id: 2 )
    share6 = ArtworkShare.create(viewer_id: 2, artwork_id: 3 )
    share7 = ArtworkShare.create(viewer_id: 3, artwork_id: 3 )
    share8 = ArtworkShare.create(viewer_id: 1, artwork_id: 4 )
