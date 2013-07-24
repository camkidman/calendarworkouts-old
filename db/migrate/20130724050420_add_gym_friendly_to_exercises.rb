class AddGymFriendlyToExercises < ActiveRecord::Migration
  def change
    add_column :exercises, :gym_friendly, :boolean
  end
end
