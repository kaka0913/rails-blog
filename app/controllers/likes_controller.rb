class LikesController < ApplicationController
  def create
    @comment = Comment.find(params[:comment_id])

    unless @comment.likes.exists?(user: current_user)
      @like = @comment.likes.create(user: current_user)
    end
    redirect_to article_path(@comment.article)
  end

  def destroy
    @like = current_user.likes.find_by(comment_id: params[:comment_id])
    @comment = @like.comment
    @like.destroy if @like
    redirect_to article_path(@comment.article)
  end
end
