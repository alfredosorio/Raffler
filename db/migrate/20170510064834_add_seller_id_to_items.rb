class AddSellerIdToItems < ActiveRecord::Migration[5.0]
  def change
    add_reference :items, :seller, foreign_key: true
  end
end
