class Task < ApplicationRecord
  validates :creator, :name, :status, presence: true
  validates :completed, inclusion: [true, false]
end
