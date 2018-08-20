class Review < ApplicationRecord
  belongs_to :reviewer, class_name: 'User', foreign_key: 'user_id'
  belongs_to :booking
  belongs_to :reviewable, polymorphic: true

  validates :body, presence: :true
end
