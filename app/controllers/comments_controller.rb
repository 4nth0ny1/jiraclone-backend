class CommentsController < ApplicationController

    def index 
        ticket = Ticket.find(params[:ticket_id])
        render json: ticket.comments
    end 

    def create 
        comment = Comment.create(comment_params)
        render json: comment
    end 

    def update 
        comment = Comment.find(params[:id])
        comment.update(comment_params)
        render json: comment
    end 

    def destroy
        comment = Comment.find(params[:id])
        comment.destroy
        render json: {}
    end 

    private 

    def comment_params
        params.require(:comment).permit(:content, :ticket_id)
    end 
end
