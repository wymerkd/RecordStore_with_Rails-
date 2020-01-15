class Album < ApplicationRecord
  scope :rock, -> { where(genre: "Rock") }
  has_and_belongs_to_many(:artists)
  has_many :songs, dependent: :destroy
  validates :name, presence: true
end
