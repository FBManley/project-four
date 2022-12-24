class ReviewSerializer < ActiveModel::Serializer
  attributes :id, :review, :like
  has_one :user
  has_one :movie
end
