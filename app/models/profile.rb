class Profile < ApplicationRecord
  has_one :user

  validates_presence_of :username, :first_name, :last_name
  validates :username, format: { with: /\A[a-z0-9_$#]+\z/ }, uniqueness: true
end
