class RemoveUserIdFromWorkouts < ActiveRecord::Migration[5.2]
  def change
    remove_column :workouts, :user_id, :integer
  end
end
