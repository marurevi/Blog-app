class PostsController < ApplicationController
  def index
    @user = User.find(params[:user_id])
    @posts = @user.posts
    @comments = Comment.where(post_id: @posts.ids)
  end

  def show
    @post = Post.find(params[:id])

  end
end
