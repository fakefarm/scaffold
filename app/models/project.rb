class Project < ApplicationRecord
  validates :name, presence: true
  belongs_to :product
  belongs_to :user
  has_many :tasks
  has_many :details
  has_one :retro
end
