class RemoveColumnFromReview < ActiveRecord::Migration[7.0]
  def change
    remove_column :reviews, :isbn, :integer
  end
end
