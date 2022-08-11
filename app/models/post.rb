class Post < ApplicationRecord
  belongs_to :author, class_name: 'User', foreign_key: 'author_id'
  has_many :comments, dependent: :destroy
  has_many :likes, dependent: :destroy

  after_save :update_posts_counter

  def recent_comments
    comments.order(created_at: :desc).limit(3)
  end

  private

  def update_posts_counter
    author.update(posts_counter: author.posts.count)
  end
end
