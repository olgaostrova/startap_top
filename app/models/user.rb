class User < ApplicationRecord
  has_many :chats
  has_many :startups
  has_many :posts
  validates :name, presence: true
end
