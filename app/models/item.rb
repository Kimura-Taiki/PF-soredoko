class Item < ApplicationRecord
  belongs_to :user
  has_many :tags
  attachment :image

  validates :name, presence: true
  validates :position, presence: true
end
