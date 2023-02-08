class ChangeReviewColumn < ActiveRecord::Migration[7.0]
  def change
    add_column :reviews, :thought_title, :string
    remove_column :reviews, :thought1, :string
  end
end
