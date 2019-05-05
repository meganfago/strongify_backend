class AddSetsToWorkouts < ActiveRecord::Migration[5.2]
  def change
    add_column :workouts, :sets, :integer
  end
end
