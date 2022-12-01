class User < ApplicationRecord
    has_secure_password
    validates :username, uniqueness: true
    has_many :gifts
    has_many :recipients
end
