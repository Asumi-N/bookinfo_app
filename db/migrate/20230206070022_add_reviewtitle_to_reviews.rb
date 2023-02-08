class AddReviewtitleToReviews < ActiveRecord::Migration[7.0]
  def change
    add_column :reviews, :review_title, :string
  end
end
