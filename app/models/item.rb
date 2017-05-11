class Item < ApplicationRecord
  has_attached_file :item_image, styles: { medium: "300x300#", thumb: "100x100#" }, default_url: "/images/:style/missing.png",
  path: ":filename.:extension"
  validates_attachment_content_type :item_image, content_type: /\Aimage\/.*\z/

  has_many :bids
  belongs_to :seller
end
