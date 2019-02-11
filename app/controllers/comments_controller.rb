class CommentsController < ApplicationController
  def new
    @comment = Comment.new
  end

  def create
    @comment = Comment.new(comment_params)
    if @comment.save

    else

    end
  end
  
  def show
    @comment = Comment.where(is_used: false)
  end

  def comment_params
    params.require(:comment).permit(:text,:color,:size)
  end
end
