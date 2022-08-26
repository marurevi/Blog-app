class Comment < ApplicationRecord
  belongs_to :author, class_name: 'User', foreign_key: 'author_id'
  belongs_to :post

  after_save :update_comments_counter
  after_destroy :update_comments_counter

  validates :text, presence: true, allow_blank: false, length: { maximum: 250 }

  private

  def update_comments_counter
    post.update(comments_counter: post.comments.count)
  end
end
