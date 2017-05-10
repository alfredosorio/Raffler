class Item < ApplicationRecord
  has_many :bids
  belongs_to :seller
end
