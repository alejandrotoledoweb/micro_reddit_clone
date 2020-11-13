class User < ApplicationRecord
  validates :name, presence: true, format: { with: /\A[a-zA-Z]+\z/,
                                             message: 'only allows letters' }
  validates :email, confirmation: true, presence: true
  validates :nickname, presence: true

  has_many :posts
end
