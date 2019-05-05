class Workout < ApplicationRecord
    has_many :users
    has_many :user_workouts, through: :users
end
