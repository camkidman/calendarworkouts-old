class BodyPart < ActiveRecord::Base
  attr_accessible :exercise_id, :muscle_group, :name, :workout_id
  # has_many :workouts
  has_and_belongs_to_many :exercises
  has_and_belongs_to_many :muscle_groups
end
