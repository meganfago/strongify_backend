class DropWorkoutExerciseTable < ActiveRecord::Migration[5.2]
  def up
    drop_table :workout_exercises
  end

  def down
    raise ActiveRecord::IrreversibleMigration
  end
end
