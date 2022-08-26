class LikesController < ApplicationController
  def create
    post_id = params[:post_id]
    author_id = current_user.id
    @like = Like.new(author_id:, post_id:)
    @like.save
    redirect_to request.referrer
  end
end
