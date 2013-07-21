class Exercise < ActiveRecord::Base
  attr_accessible :difficulty, :movement_type, :name
  has_many :workouts
  has_many :body_parts, through => :workouts
end
