class ReviewSerializer < ActiveModel::Serializer
  attributes :id, :recipe_id, :description 
  belongs_to :recipe
end
