class List < ApplicationRecord
  has_many :bookmarks, dependent: :destroy, inverse_of: :list
  has_many :movies, through: :bookmarks
  validates :name, uniqueness: true, presence: true
end
