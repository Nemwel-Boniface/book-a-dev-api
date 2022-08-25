class Developer < ApplicationRecord
  validates :name, presence: true
  validates :icon, presence: true
  validates :location, presence: true
  validates :experience, numericality: { only_integer: true, greater_than_or_equal_to: 0 }, presence: true
  validates :bio, presence: true
  validates :hourly_rate, numericality: { only_integer: true, greater_than_or_equal_to: 0 }, presence: true
  validates :tech_stack, presence: true
  validates :github, presence: true
  validates :twitter, presence: true
  validates :linkedin, presence: true
  validates :available, inclusion: { in: [true, false] }
  validates :title, presence: true
  validates :phone, presence: true
  has_many :reservations, dependent: :destroy
  belongs_to :user
end
