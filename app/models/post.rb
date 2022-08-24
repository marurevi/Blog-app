class Post < ApplicationRecord
  belongs_to :author, class_name: 'User', foreign_key: 'author_id'
  has_many :comments, dependent: :destroy
  has_many :likes, dependent: :destroy

  after_save :update_posts_counter

  def all_comments
    comments.includes([:author]).order(created_at: :desc)
  end

  def recent_comments
    all_comments.limit(5)
  end

  validates :title, presence: true, length: { maximum: 250 }
  validates :comments_counter, numericality: { only_integer: true }, comparison: { greater_than_or_equal_to: 0 }
  validates :likes_counter, numericality: { only_integer: true }, comparison: { greater_than_or_equal_to: 0 }

  private

  def update_posts_counter
    author.update(posts_counter: author.posts.count)
  end
end
