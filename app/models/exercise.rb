class Exercise < ActiveRecord::Base
  attr_accessible :difficulty, :movement_type, :name
  belongs_to :workout
end
