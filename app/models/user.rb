class User < ApplicationRecord
    has_secure_password #macro method that gives us password/password= authenticate, and validates
    has_many :reviews, dependent: :destroy
    has_many :movies, through: :reviews

    validates :username,presence: true, uniqueness: true

end
