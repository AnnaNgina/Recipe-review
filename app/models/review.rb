class Review < ApplicationRecord
  validates :description, length: { minimum: 4}
  belongs_to :recipe
end
