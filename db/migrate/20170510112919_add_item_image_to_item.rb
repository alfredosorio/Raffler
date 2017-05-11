class AddItemImageToItem < ActiveRecord::Migration[5.0]
  def up
    add_attachment :items, :item_image
  end

  def down
    remove_attachment :items, :item_image
  end
end
