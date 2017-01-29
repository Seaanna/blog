class Post < ApplicationRecord
  # post gets deleted, so does the comments
  has_many :comments, dependent: :destroy
  validates :title, presence: true, length: { minimum: 5 }
  validates :body, presence: true
end
