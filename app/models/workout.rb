class Workout < ActiveRecord::Base
  attr_accessible :exercise_id, :body_part_id, :name
  belongs_to :exercise
  belongs_to :body_part
end
