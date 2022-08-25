class CommentsController < ApplicationController
  def new
    @comment = Comment.new
  end

  def create
    @comment = Comment.new(comment_params)
    @comment.author = current_user
    @comment.post = Post.find(params[:post_id])
    @author = User.find(params[:user_id])

    if @comment.save
      flash[:success] = 'Comment created!'
      redirect_to user_post_path(@author, @comment.post_id)
    else
      flash.now[:error] = 'Comment not created! Try again.'
      render :new
    end
  end

  private

  def comment_params
    params.require(:comment).permit(:text, :author_id, :post_id)
  end
end
