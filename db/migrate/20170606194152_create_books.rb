class CreateBooks < ActiveRecord::Migration[5.1]
  def change
    create_table :books do |t|
      t.string :barcode
      t.string :title
      t.string :description
      t.integer :author_id
      t.integer :genre_id
      t.float :height

      t.timestamps
    end
  end
end
