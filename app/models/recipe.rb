class Recipe < ApplicationRecord
    validates :name, presence: true
    validates :image_url, presence: true
    validates :description, length: { minimum: 10}
    has_many :reviews 
   
end