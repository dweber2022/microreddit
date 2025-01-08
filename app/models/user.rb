class User < ApplicationRecord
  validates :name, length: { in: 3..24 }
  validates :name, :email, :password, presence: true
  validates :name, :email, uniqueness: true
  validates :email, length: { maximum: 320 }
  validates :email, format: { with: URI::MailTo::EMAIL_REGEXP }
  validates :password, length: { in: 8..64 }
  validates :password, confirmation: true
  validates :password_confirmation, presence: true, unless: Proc.new { |a| a.password.blank? }
  has_many :posts
  has_many :comments
end
