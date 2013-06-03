class CreatePhotos < ActiveRecord::Migration
  def change
    create_table :photos do |t|
      t.string :title
      t.string :image
      t.references :user
      t.references :category
      t.boolean :comments_allowed

      t.timestamps
    end
    add_index :photos, :user_id
    add_index :photos, :category_id
  end
end
