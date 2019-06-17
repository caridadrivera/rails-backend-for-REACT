class LikeSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :post_id

  belongs_to :post
  belongs_to :user

end
