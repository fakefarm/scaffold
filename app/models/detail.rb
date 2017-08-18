class Detail < ApplicationRecord
  validates :title, presence: true
  belongs_to :product
  belongs_to :project
  belongs_to :user
  belongs_to :task
end
