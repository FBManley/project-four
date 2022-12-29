class Review < ApplicationRecord
  belongs_to :user
  belongs_to :movie

  validates :review, presence: :true
end

finish update/delete
open react frontend 
create login/signup form
build out movies
list reviews for movies 