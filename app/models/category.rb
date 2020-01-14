class Category < ApplicationRecord

  validates :name, :type, :model, presence: true

  has_many :products

end
