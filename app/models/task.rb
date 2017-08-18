class Task < ApplicationRecord
  validates :title, presence: true
  belongs_to :user
  belongs_to :product
  belongs_to :project
end
