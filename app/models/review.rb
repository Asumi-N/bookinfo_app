class Review < ApplicationRecord
    has_many :review_tags, dependent: :destroy
    has_many :tags, through: :review_tags
    belongs_to :user
    accepts_nested_attributes_for :review_tags
    validates :title, presence: true
    validates :author, presence: true
    validates :publisher, presence: true
end
