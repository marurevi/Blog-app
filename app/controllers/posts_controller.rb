class PostsController < ApplicationController
  load_and_authorize_resource

  def index
    @user = User.find(params[:user_id])
    @posts = @user.all_posts
  end

  def show
    @post = Post.find(params[:id])
    @comments = @post.all_comments.order(created_at: :desc)
  end

  def new
    @post = Post.new
    @user = current_user
  end

  def create
    @user = current_user
    @post = @current_user.posts.new(post_params)

    if @post.save
      flash[:success] = 'Post created!'
      redirect_to user_post_path(current_user, @post)
    else
      flash.now[:error] = 'Post not created! Try again.'
      render :new
    end
  end

  def destroy
    @post.destroy
    
    if @post.destroy
      flash[:success] = 'Post deleted!'
      redirect_to request.referrer
    else
      flash[:error] = 'Post not deleted!'
      redirect_to request.referrer
    end
  end

  private

  def post_params
    params.require(:post).permit(:title, :text)
  end
end
