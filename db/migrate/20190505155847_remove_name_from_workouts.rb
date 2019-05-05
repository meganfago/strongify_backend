class RemoveNameFromWorkouts < ActiveRecord::Migration[5.2]
  def change
    remove_column :workouts, :name, :string
  end
end
