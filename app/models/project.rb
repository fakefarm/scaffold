class Project < ApplicationRecord
  validates :name, presence: true
  belongs_to :product
  belongs_to :user
end
