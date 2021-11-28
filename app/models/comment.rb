class Comment < ApplicationRecord
  validates :title, length: { in: 4..30 }
  validates :body, presence: true, length: { maximum: 500 }
  validates :post, presence: true
  validates :user, presence: true

  belongs_to :post, foreign_key: 'post_id'
  belongs_to :user, foreign_key: 'user_id'
end
