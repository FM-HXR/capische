class Topic < ApplicationRecord
  belongs_to :user
  has_many :points, dependent: :destroy
  has_many :topic_tags
  has_many :tags, through: :topic_tags
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :category

  validates :title, presence: true, length: { maximum: 150 }
  validates :category_id, presence: true
  validates :pro, presence: true
  validates :con, presence: true
  validates :category_id, numericality: { other_than: 1 }
end
