class CreateReviews < ActiveRecord::Migration[7.0]
  def change
    create_table :reviews do |t|
      t.integer :user_id
      t.integer :book_id
      t.integer :star
      t.string :thought1
      t.text :thought2

      t.timestamps
    end
  end
end
