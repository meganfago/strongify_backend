class AddColumnsToUserWorkouts < ActiveRecord::Migration[5.2]
  def change
    add_column :user_workouts, :user_sets2, :integer
    add_column :user_workouts, :user_reps2, :integer
    add_column :user_workouts, :user_weight2, :integer
    add_column :user_workouts, :user_sets3, :integer
    add_column :user_workouts, :user_reps3, :integer
    add_column :user_workouts, :user_weight3, :integer
  end
end
