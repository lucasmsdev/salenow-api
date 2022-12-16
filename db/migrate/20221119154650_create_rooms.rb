class CreateRooms < ActiveRecord::Migration[7.0]
  def change
    create_table :rooms do |t|
      t.string :name,null: false
      t.text :description,null: false
      t.string :image_url,null: false
      t.string :youtube_url,null: false
      t.numeric :price,null: false

      t.timestamps
    end
  end
end
