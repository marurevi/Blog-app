class PostsController < ApplicationController
  def index
    @user = User.includes(%i[posts comments]).find(params[:user_id])
  end

  def show
    @post = Post.includes([:author]).find(params[:id])
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
      flash[:error] = 'Post not created! Try again.'
      render :new
    end
  end

  private

  def post_params
    params.require(:post).permit(:title, :text)
  end
end
