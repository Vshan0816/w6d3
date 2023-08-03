class CommentsController < ApplicationController
    def index
        render json: Comment.all
    end

    def destroy
        @comment = Comment.find(params[:id])
        @comment.destroy 
    end 

    def create 
        @comment = comment.new(params.require(:Comment).permit(:author_id, :artwork_id, :body))
        # replace the `comment_attributes_here` with the actual attribute keys
        if @comment.save
            redirect_to comment_url(@comment.id)
        else 
            render json: @comment.errors.full_messages, status: :unprocessable_entity
        end
    end
end