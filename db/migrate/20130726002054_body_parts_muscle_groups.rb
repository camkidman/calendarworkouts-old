class BodyPartsMuscleGroups < ActiveRecord::Migration
  def up
  	create_table :body_parts_muscle_groups, :id => false do |t|
  		t.references :body_part
  		t.references :muscle_group
  	end
  	add_index(:body_parts_muscle_groups, [:body_part_id, :muscle_group_id], :name => "body_parts_muscle_group_index")
  end

  def down
  	drop_table :body_parts_muscle_groups
  end
end
