class CreateRecipients < ActiveRecord::Migration[7.0]
  def change
    create_table :recipients do |t|
      t.string "name"
      t.string "relationship"
      t.integer "priority"
      t.belongs_to :user

      t.timestamps
    end
  end
end
