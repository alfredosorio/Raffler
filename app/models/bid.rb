class Bid < ApplicationRecord
  belongs_to :user
  belongs_to :item

  validates :user_id, uniqueness: true
end
