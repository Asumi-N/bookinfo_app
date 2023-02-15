class RemoveColumnsFromReview < ActiveRecord::Migration[7.0]
  def change
    remove_column :reviews, :thought_title, :string
  end
end
