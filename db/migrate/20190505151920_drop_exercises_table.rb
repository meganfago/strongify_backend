class DropExercisesTable < ActiveRecord::Migration[5.2]
 
    def up
      drop_table :exercises
    end
  
    def down
      raise ActiveRecord::IrreversibleMigration
    end

end
