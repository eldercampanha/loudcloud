class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.references :song, index: true, null: false
      t.text :body, null: false

      t.timestamps null: false
    end
    add_foreign_key :comments, :songs
  end
end
