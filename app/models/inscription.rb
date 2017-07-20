class Inscription < ApplicationRecord
  belongs_to :dogwalk
  belongs_to :user
end
