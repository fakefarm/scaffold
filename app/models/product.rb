class Product < ApplicationRecord
  validates :name, presence: true
  has_many :projects
  has_many :tasks
  has_many :details
  has_many :activities
  belongs_to :user
end
