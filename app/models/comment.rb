class Comment < ApplicationRecord
  belongs_to :dog_walk
  belongs_to :user
end
