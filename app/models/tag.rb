class Tag < ApplicationRecord
  has_many :reviews, through: :review_tags
  has_many :review_tags
end
