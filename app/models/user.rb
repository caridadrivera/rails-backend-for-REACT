class User < ApplicationRecord
  has_many :posts
  has_many :likes
  has_many :friendships, class_name: "Friendship", foreign_key: "user_id"
  has_many :friends, through: :friendships
end
