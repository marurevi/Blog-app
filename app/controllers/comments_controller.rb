class CommentsController < ApplicationController
  load_and_authorize_resource
  def new
    @comment = Comment.new
  end

  def create
    @comment = Comment.new(comment_params)
    @comment.author = current_user
    @comment.post = Post.find(params[:post_id])
    @author = User.find(params[:user_id])

    @comment.save

    if @comment.save
      flash[:success] = 'Comment created!'
      redirect_to user_post_path(@author, @comment.post_id)
    else
      flash.now[:error] = 'Comment not created! Try again.'
      render :new
    end
  end

  def destroy
    @comment.destroy
    if @comment.destroy
      flash[:success] = 'Comment deleted!'
    else
      flash[:error] = 'Comment not deleted!'
    end
    redirect_to request.referrer
  end

  private

  def comment_params
    params.require(:comment).permit(:text, :author_id, :post_id)
  end
end
