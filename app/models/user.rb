class User < ApplicationRecord
  validates :name, presence: true, format: { with: /\A[a-zA-Z]+\z/,
                                             message: 'only allows letters' }
  validates :email, confirmation: true, presence: true, uniqueness: true
  validates :nickname, presence: true, uniqueness: true, length: { in: 6..16 }

  has_many :posts
  has_many :comments
end
