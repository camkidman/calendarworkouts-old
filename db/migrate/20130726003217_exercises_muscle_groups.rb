class ExercisesMuscleGroups < ActiveRecord::Migration
  def up
  	create_table :exercises_muscle_groups, :id => false do |t|
  		t.references :exercise
  		t.references :muscle_group
  	end
  	add_index(:exercises_muscle_groups, [:exercise_id, :muscle_group_id], :name => "exercisesmusclegroupsindex")
  end

  def down
  	drop_table :exercises_muscle_groups
  end
end
