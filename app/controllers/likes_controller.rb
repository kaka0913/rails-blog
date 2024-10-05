class LikesController < ApplicationController
  def create
    @comment = Comment.find(params[:comment_id])
    @like = @comment.likes.create
    redirect_to article_path(@comment.article)
  end

  def destroy
    @like = Like.find(params[:id])
    @comment = @like.comment
    @like.destroy
    redirect_to article_path(@comment.article)
  end
end
