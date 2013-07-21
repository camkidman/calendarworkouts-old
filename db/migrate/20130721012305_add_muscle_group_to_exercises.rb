class AddMuscleGroupToExercises < ActiveRecord::Migration
  def change
    add_column :exercises, :muscle_group, :string
  end
end
