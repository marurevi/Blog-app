class Comment < ApplicationRecord
  belongs_to :author, class_name: 'User', foreign_key: 'author_id', optional: true
  belongs_to :post, class_name: 'Post', optional: true
end
