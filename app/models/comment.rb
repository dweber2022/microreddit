class Comment < ApplicationRecord
  validates :comment, presence: true
  validates :comment, length: { maximum: 280 }
  belongs_to :post
  belongs_to :user
end
