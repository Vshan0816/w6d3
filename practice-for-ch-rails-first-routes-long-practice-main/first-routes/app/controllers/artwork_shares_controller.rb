class ArtworkSharesController < ApplicationController
    def index
        render json: ArtworkShare.all
    end

    def destroy
        @artwork_share = ArtworkShare.find(params[:id])
        @artwork_share.destroy 
    end 

    def update 
        @artwork_share = ArtworkShare.find(params[:id])
        if @artwork_share.update(params.require(:artwork_share).permit(:viewer_id, :artwork_id))
            redirect_to user_url(@artwork_share.id)
        else 
            render json: @artwork_share.errors.full_messages, status: :unprocessable_entity
        end 
    end 

    def show
        @artwork_share = ArtworkShare.find(params[:id])
        render json: @artwork_share 
    end

    def create 
        @artwork_share = ArtworkShare.new(params.require(:artwork_share).permit(:viewer_id, :artwork_id))
        # replace the `user_attributes_here` with the actual attribute keys
        if @artwork_share.save
            redirect_to user_url(@artwork_share.id)
        else 
            render json: @artwork_share.errors.full_messages, status: :unprocessable_entity
        end
    end
end