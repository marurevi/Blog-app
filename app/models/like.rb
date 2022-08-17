class Like < ApplicationRecord
  belongs_to :author, class_name: 'User', foreign_key: 'author_id'
  belongs_to :posts, class_name: 'Post', foreign_key: 'posts_id'

  after_save :update_likes_counter

  private

  def update_likes_counter
    posts.increase!(likes_counter: posts.likes_counter)
  end
end
