class Dog < ApplicationRecord
  has_many :strolls, dependent: :destroy
  has_many :dogsitters, through: :strolls
  belongs_to :city
end
