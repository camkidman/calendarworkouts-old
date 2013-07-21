class CreateBodyParts < ActiveRecord::Migration
  def change
    create_table :body_parts do |t|
      t.string :name
      t.integer :exercise_id
      t.integer :workout_id
      t.string :muscle_group

      t.timestamps
    end
  end
end
