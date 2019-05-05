class CreateUserWorkouts < ActiveRecord::Migration[5.2]
  def change
    create_table :user_workouts do |t|
      t.integer :user_id
      t.integer :workout_id
      t.integer :user_sets
      t.integer :user_reps
      t.integer :user_weight

      t.timestamps
    end
  end
end
