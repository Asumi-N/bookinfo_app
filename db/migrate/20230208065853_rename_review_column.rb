class RenameReviewColumn < ActiveRecord::Migration[7.0]
  def change
    rename_column :reviews, :thought2, :thought
  end
end
