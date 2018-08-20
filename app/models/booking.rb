class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :puppy
  has_many :reviews
end
