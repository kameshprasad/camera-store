class Category < ApplicationRecord
  self.inheritance_column = nil

  validates :name, :type, :model, presence: true

  has_many :products

end
