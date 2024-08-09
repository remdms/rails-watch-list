class List < ApplicationRecord
  has_many :bookmarks, dependent: :destroy, inverse_of: :list
  has_many :movies, through: :bookmarks
  validates :name, uniqueness: true, presence: true
  has_one_attached :photo
  validates :photo, presence: true
end
