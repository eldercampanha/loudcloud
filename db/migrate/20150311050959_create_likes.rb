class CreateLikes < ActiveRecord::Migration
  def change
    create_table :likes do |t|
      t.references :song, index: true, null: false

      t.timestamps null: false
    end
    add_foreign_key :likes, :songs
  end
end
