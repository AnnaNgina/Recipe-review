class Review < ApplicationRecord
    belongs_to :recipe, optional: true
   
end
