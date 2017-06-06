class CreateLoans < ActiveRecord::Migration[5.1]
  def change
    create_table :loans do |t|
      t.integer :card_id
      t.integer :book_id
      t.date :expiry_date
      t.boolean :current

      t.timestamps
    end
  end
end
