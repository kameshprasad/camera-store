class Product < ApplicationRecord

  validates :name, :description, :price, :make, presence: true

  belongs_to :category

end
