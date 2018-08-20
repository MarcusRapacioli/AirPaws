class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :puppy
  has_many :reviews

  validates :pick_up, presence: :true
  validates :drop_off, presence: :true

end
