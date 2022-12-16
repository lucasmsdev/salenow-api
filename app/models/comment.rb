class Comment < ApplicationRecord

  belongs_to :room

  validates :content, presence: true
  validates :room_id, presence: true
end
