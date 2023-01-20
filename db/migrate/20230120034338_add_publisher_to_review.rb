class AddPublisherToReview < ActiveRecord::Migration[7.0]
  def change
    add_column :reviews, :publisher, :string
  end
end
