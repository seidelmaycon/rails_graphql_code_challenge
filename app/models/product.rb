
class Product < ApplicationRecord
  has_many :images

  validates :name, :category, :price, presence: true

  accepts_nested_attributes_for :images
end
