class Note < ApplicationRecord
  NOTES = %w(Note::Detail Note::Product Note::Project Note::Question Note::Retro Note::Tas )

  validates :body, presence: true
  validates :type, inclusion: { :in => NOTES }
  belongs_to :user
end
