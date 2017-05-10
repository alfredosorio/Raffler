class Seller < ApplicationRecord
  belongs_to :user
  has_many :items

  has_one :profile, through: :user
end
