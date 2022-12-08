class GiftSerializer < ActiveModel::Serializer
  attributes :id, :name, :description, :photo_url, :bought, :made, :priority, :wrapped, :price, :user_id, :recipient_id

  belongs_to :user
  belongs_to :recipient
end
