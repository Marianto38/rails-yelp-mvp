class Review < ApplicationRecord
  belongs_to :restaurant
  validates :rating, presence: true, acceptance: { accept: (0..5).to_a }, numericality: { only_integer: true }
  validates :content, presence: true
end
