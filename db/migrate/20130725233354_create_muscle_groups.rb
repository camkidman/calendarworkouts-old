class CreateMuscleGroups < ActiveRecord::Migration
  def change
    create_table :muscle_groups do |t|
    	t.string :name
    	t.string :movement
      t.timestamps
    end
  end
end
