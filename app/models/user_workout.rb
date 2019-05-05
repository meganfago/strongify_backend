class UserWorkout < ApplicationRecord
    belongs_to :user, required: false
    belongs_to :workout, required: false

end
