class Bid < ApplicationRecord
  belongs_to :user
  belongs_to :item

  has_one :seller, through: :item
  has_one :profile, through: :user
end
