class CreateExercises < ActiveRecord::Migration
  def change
    create_table :exercises do |t|
      t.string :name
      t.string :movement_type
      t.integer :difficulty

      t.timestamps
    end
  end
end
