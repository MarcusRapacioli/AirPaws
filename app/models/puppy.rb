class Puppy < ApplicationRecord
  belongs_to :owner, class_name: 'User', foreign_key: 'user_id'
  has_many :bookings
  has_many :bookers, through: :bookings, source: :user
  has_many :reviews, as: :reviewable

  validates :name, presence: :true
  validates :breed, presence: :true
  validates :age, presence: :true
  validates :location, presence: :true
  validates :price, presence: :true
end