class AddColumnToReview < ActiveRecord::Migration[7.0]
  def change
    add_column :reviews, :isbn, :string
  end
end
