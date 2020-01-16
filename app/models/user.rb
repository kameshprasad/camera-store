# frozen_string_literal: true

class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable,
         :confirmable, :timeoutable, :lockable,
         :trackable

  validates :email, :first_name, :last_name,
            presence: true

  validates :email, uniqueness: { case_sensitive: false }
end
