class Post < ApplicationRecord
  validates :link, presence: true
  validates :link, format: { with: URI.regexp([ "http", "https" ]) }
  validates :link, length: { maximum: 300 }
  belongs_to :user
  has_many :comments
end
