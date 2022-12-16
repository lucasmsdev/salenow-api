class CommentsController < ApplicationController 
  def create
    payload = params.require(:comment).permit(:room_id, :content)
    @comment = Comment.create(payload)
    redirect_to @comment.room
  end

  def show
    @comment = Comment.find(params[:id])
    @comments
  end
end