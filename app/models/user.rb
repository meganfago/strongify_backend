class User < ApplicationRecord
    has_many :workouts 
    has_many :workout_exercises, through: :workouts
    validates :name, presence: true, length: { minimum: 2 }, uniqueness: true
    validates :username, presence: true, length: { minimum: 2 }, uniqueness: true
    validates :email, presence: true, length: { minimum: 2 }, uniqueness: true
end
