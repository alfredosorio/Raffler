class CreateSellers < ActiveRecord::Migration[5.0]
  def change
    create_table :sellers do |t|
      t.references :user, foreign_key: true
      t.integer :seller_rating, default: 0

      t.timestamps
    end
  end
end
