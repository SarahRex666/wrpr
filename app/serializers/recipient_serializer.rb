class RecipientSerializer < ActiveModel::Serializer
  attributes :id, :name, :relationship, :priority, :user_id, :gifts

  has_many :gifts
  belongs_to :user
end
