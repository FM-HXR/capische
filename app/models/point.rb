class Point < ApplicationRecord
  belongs_to :user
  belongs_to :topic
  has_many :comments, dependent: :destroy
  has_one_attached :image

  validates :title, presence: true, length: { maximum: 255 }
  validates :main_point, presence: true, length: { maximum: 600 }
  validates :conclusion, presence: true, length: { maximum: 255 }
  validates :rating, presence: true
end
