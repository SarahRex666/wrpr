class CreateGifts < ActiveRecord::Migration[7.0]
  def change
    create_table :gifts do |t|
      t.string "name"
      t.string "description"
      t.string "photo_url"
      t.boolean "bought"
      t.boolean "made"
      t.integer "priority"
      t.boolean "wrapped"
      t.integer "price"
      t.belongs_to :user
      t.belongs_to :recipient

      t.timestamps
    end
  end
end
