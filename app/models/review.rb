class Review < ApplicationRecord
    belongs_to :user, optional: true
    has_many :tags, through: :review_tags
    has_many :review_tags
    accepts_nested_attributes_for :review_tags
end
