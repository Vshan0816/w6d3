class CommentsController < ApplicationController
    def index
        if params.has_key?(:user_id)
            @comment = Comment
            .select('distinct(comments.body)')
            .joins(:author, :artwork)
            .where("comments.author_id = #{params[:user_id]}")
            render json: @comment
        elsif params.has_key?(:artwork_id)
            @comment = Comment
            .select('distinct(comments.body)')
            .joins(:author, :artwork)
            .where("comments.artwork_id = #{params[:artwork_id]}")
            render json: @comment
        end

        
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