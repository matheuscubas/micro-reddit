class Post < ApplicationRecord
  validates :title, presence: true, length: { in: 4..30 }
  validates :body, length: { maximum: 500 }
  validates :user, presence: true

  belongs_to :user
  has_many :comments
end
