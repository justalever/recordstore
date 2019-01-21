class Record < ApplicationRecord
  belongs_to :user

  validates :title, :year, presence: true
end
