class CreateMuscleGroups < ActiveRecord::Migration
  def change
    create_table :muscle_groups do |t|

      t.timestamps
    end
  end
end
