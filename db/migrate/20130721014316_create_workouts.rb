class CreateWorkouts < ActiveRecord::Migration
  def change
    create_table :workouts do |t|
      t.string :name
      t.belongs_to :exercise
      t.belongs_to :body_part
      t.timestamps
    end
  end
end
