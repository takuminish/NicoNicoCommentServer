# coding: utf-8
class CommentsController < ApplicationController
  def new
    @comment = Comment.new
  end

  def create
    @comment = Comment.new(comment_params)
    @comment.size = "60"
    @comment.color= "white"
    if @comment.save
      flash[:success] = "コメントを送信しました"
    else
      flash[:danger] = "コメントの送信に失敗しました"
    end
    redirect_to :action => "new"
  end
  
  def show

    @comment = Comment.where(is_used: false)
    @comment.each do |c|
      c.update_attribute(:is_used, true)
    end

    render :json => @comment
  end

  def comment_params
    params.require(:comment).permit(:text)
  end
end
