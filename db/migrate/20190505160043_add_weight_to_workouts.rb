class AddWeightToWorkouts < ActiveRecord::Migration[5.2]
  def change
    add_column :workouts, :weight, :integer
  end
end
