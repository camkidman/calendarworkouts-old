class BodyPartsExercises < ActiveRecord::Migration
  def up
  	create_table :body_parts_exercises, :id => false do |t|
  		t.references :body_part
  		t.references :exercise
  	end
  	add_index(:body_parts_exercises, [:body_part_id, :exercise_id], :name => "body_part_exercises_index")
  end

  def down
  	drop_table :body_parts_exercises
  end
end
