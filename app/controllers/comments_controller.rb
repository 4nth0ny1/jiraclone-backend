class CommentsController < ApplicationController

    def index 
        ticket = Ticket.find(params[:ticket_id])
        comments = ticket.comments
        render json: comments
    end 

    def create 
        comment = Comment.new(comment_params)

        if comment.save
            render json: comment
        end
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
