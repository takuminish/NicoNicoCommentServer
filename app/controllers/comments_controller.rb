class CommentsController < ApplicationController
  def new
    @comment = Comment.new
  end

  def create
    

  end
  
  def show
    @comment = Comment.where(is_used: false)
  end
end
