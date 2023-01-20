class AddReviewColumns < ActiveRecord::Migration[7.0]
  def change
    add_column :reviews, :title, :string
    add_column :reviews, :author, :string
    add_column :reviews, :isbn, :integer
    remove_column :reviews, :book_id, :integer
    remove_column :reviews, :star, :string
  end
end
