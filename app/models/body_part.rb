class BodyPart < ActiveRecord::Base
  attr_accessible :exercise_id, :muscle_group, :name, :workout_id
end
