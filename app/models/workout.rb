class Workout < ActiveRecord::Base
  attr_accessible :exercise_id, :name
  has_many :exercises
end
