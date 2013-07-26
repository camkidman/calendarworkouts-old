class ExercisesWorkouts < ActiveRecord::Migration
  def up
  	create_table :exercises_workouts , :id => false do |t|
  		t.references :exercise, :null => false
  		t.references :workout, :null => false
  	end
  	add_index(:exercises_workouts, [:exercise_id, :workout_id])
  end
  def down
  	drop_table :exercises_workouts
  end
end
