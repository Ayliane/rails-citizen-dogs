class DogWalk < ApplicationRecord
  belongs_to :user
  has_many :comments
  has_many :inscriptions
end
