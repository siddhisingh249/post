class CommentsController < ApplicationController
  before_action :set_comment, only: [:destroy]

  def create
    @post = Post.find(params[:post_id])
    @comment = @post.comments.create(comment_params)
    redirect_to :back
  end

  def destroy
    @comment.destroy
    respond_to do |format|
      format.html { redirect_to :back, success: 'Comment was successfully deleted.' }
    end
  end

  private
  
  def set_comment
    @comment = Comment.find(params[:id])
  end
  
  def comment_params
    params.require(:comment).permit(:comment).merge({commenter: current_user.email})
  end

end