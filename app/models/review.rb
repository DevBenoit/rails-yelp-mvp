class Review < ApplicationRecord
  belongs_to :restaurant

  RATINGS = (0..5).to_a

  validates :content, presence: true
  validates :rating, presence: true
  validates :rating, inclusion: { in: RATINGS }, numericality: true
end
