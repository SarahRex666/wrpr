class UserSerializer < ActiveModel::Serializer
  attributes :id, :first_name, :last_name, :username, :password, :email

  has_many :gifts
  has_many :recipients
end
