class Movie < ApplicationRecord
  has_many :bookmarks, inverse_of: :movie
  # dependent: :restrict_with_exception
  validates :title, uniqueness: true, presence: true
  validates :overview, presence: true
end
