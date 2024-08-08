class Bookmark < ApplicationRecord
  belongs_to :movie
  belongs_to :list
  validates :movie, presence: true, uniqueness: { scope: :list, message: 'This movie is already in the list' }
  validates :list, presence: true
  validates :comment, length: { minimum: 6 }
end
