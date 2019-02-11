# coding: utf-8
class CommentsController < ApplicationController
  def new
    @comment = Comment.new
  end

  def create
    @comment = Comment.new(comment_params)
    if @comment.save
      flash[:success] = "コメントを送信しました"
    else
      flash[:danger] = "コメントの送信に失敗しました"
    end
    redirect_to :action => "new"
  end
  
  def show
    @comment = Comment.where(is_used: false)
  end

  def comment_params
    params.require(:comment).permit(:text,:color,:size)
  end
end
