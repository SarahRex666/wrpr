class Recipient < ApplicationRecord
    has_many :gifts
    belongs_to :user
    accepts_nested_attributes_for :gifts
end
