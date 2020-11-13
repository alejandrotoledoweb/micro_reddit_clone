class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :post
  validates :body, confirmation: true, presence: true
end
