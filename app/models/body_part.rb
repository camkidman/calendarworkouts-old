class BodyPart < ActiveRecord::Base
  attr_accessible :exercise_id, :muscle_group, :name, :workout_id
  # has_many :workouts
  belongs_to :exercises
end
