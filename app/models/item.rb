class Item < ApplicationRecord
  belongs_to :user
  attachment :image
  
  validates :name, presence: true
  validates :position, presence: true
end
