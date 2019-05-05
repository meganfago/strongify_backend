class AddUserNameToWorkouts < ActiveRecord::Migration[5.2]
  def change
    add_column :workouts, :user_name, :string
  end
end
