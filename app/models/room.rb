class Room < ApplicationRecord
  has_many :comments

  validates :name, presence: true
  validates :description, presence: true
  validates :image_url, presence: true
  validates :youtube_url, presence: true
  validates :price, presence: true
end
