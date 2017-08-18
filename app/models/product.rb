class Product < ApplicationRecord
  validates :name, presence: true
  has_many :projects
  belongs_to :user
end
