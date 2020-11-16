class Post < ApplicationRecord
  belongs_to :user
  validates :title, confirmation: true, presence: true
  validates :article, presence: true

  has_many :comments
end
