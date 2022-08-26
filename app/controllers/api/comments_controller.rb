class Api::CommentsController < ApplicationController
  # protect_from_forgery with: :null_session 
  skip_before_action :verify_authenticity_token

  def index
    @post = Post.find(params[:post_id])
    @comments = @post.comments
    render json: @comments
  end
  def create
    @comment = Comment.new
    @comment.text = params[:text]
    @comment.author_id = params[:user_id]
    @comment.post_id = params[:post_id]
    if @comment.save
      render json: @comment
    else
      render json: @comment.errors, status: :unprocessable_entity
    end
  end
end