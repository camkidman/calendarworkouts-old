class Exercise < ActiveRecord::Base
  attr_accessible :difficulty, :movement_type, :name, :workout_id
end
