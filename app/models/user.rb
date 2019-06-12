class User < ApplicationRecord
    has_secure_password
    has_many :user_workouts
    has_many :workouts, through: :user_workouts

    validates :name, presence: true, length: { minimum: 2 }
    validates :username, presence: true, length: { minimum: 2 }, uniqueness: true
    validates :email, presence: true, uniqueness: true, format: { with: /.+\@.+\..+/ }

    def to_custom_json
        {
            name: self.name,
            username: self.username,
            email: self.email,
            image: self.image, 
            workouts: self.user_workouts
        }
    end 
    
end
