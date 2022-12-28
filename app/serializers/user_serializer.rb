class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :password_digest
  has_many :movies
  has_many :reviews, serializer: ReviewSerializer
end
