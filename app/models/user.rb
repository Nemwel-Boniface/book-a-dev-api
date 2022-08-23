class User < ActiveRecord::Base
  validates :name, presence: true
  validates :email, presence: true
  validates :username, presence: true
  validates :password, presence: true

  has_many :reservations
  has_many :developers
end
