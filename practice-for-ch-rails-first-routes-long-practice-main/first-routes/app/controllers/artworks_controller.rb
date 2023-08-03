class ArtworksController < ApplicationController
    def index
        artwork = Artwork
        .select('artworks.title')
        .where("artworks.artist_id = #{params[:user_id]}")
        render json: artwork
    end

    def destroy
        @artwork = Artwork.find(params[:id])
        @artwork.destroy 
    end 

    def update 
        @artwork = Artwork.find(params[:id])
        if @artwork.update(artwork_params)
            redirect_to user_url(@artwork.id)
        else 
            render json: @artwork.errors.full_messages, status: :unprocessable_entity
        end 
    end 

    def show
        @artwork = Artwork.find(params[:id])
        render json: @artwork 
    end

    def create 
        @artwork = Artwork.new(artwork_params)
        # replace the `user_attributes_here` with the actual attribute keys
        if @artwork.save
            redirect_to user_url(@artwork.id)
        else 
            render json: @artwork.errors.full_messages, status: :unprocessable_entity
        end
    end

    private
    def artwork_params
        params.require(:artwork).permit(:title, :image_url, :artist_id)
    end
end