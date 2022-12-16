class CreateComments < ActiveRecord::Migration[7.0]
  def change
    create_table :comments do |t|
      t.string :content, null: false
      t.integer :room_id, null: false
      t.index ["room_id"], name: "index_comments_on_room_id"

      t.timestamps
    end
  end
end
