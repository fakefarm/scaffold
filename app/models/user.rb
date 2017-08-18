class User < ApplicationRecord
  validates :first_name, :last_name, :email, presence: true
  
  has_many :activities
  has_many :details
  has_many :products
  has_many :projects
  has_many :retros
  has_many :tasks
  has_many :notes
end
