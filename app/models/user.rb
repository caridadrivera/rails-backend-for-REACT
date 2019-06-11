require 'bcrypt'

class User < ApplicationRecord
  has_secure_password

  has_many :posts
  has_many :likes
  has_many :friendships, class_name: "Friendship", foreign_key: "user_id"
  has_many :friends, through: :friendships



  # def reset_token!
  #   self.session_token = SecureRandom.urlsafe_base64(16)
  #   self.save!
  #   self.session_token
  # end

  # def isLiked(post_id)
  #   self.likes.each do |like|
  #     return true if like.post_id == post_id
  #   end
  #   false
  # end

  private
  # def ensure_session_token
  #   self.session_token ||= SecureRandom.urlsafe_base64(16)
  # end


end
