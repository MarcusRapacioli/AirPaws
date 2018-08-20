class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :owned_puppies, class_name: 'Puppy', foreign_key: 'user_id'
  has_many :bookings
  has_many :booked_puppies, through: :bookings, source: :puppy
  has_many :reviews, as: :reviewable

  def given_reviews
    given_reviews = []
    Review.all.each do |review|
      if review.user == self
        given_reviews << review
      end
    end
    return given_reviews
  end
end
