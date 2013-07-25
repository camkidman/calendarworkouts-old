class Workout < ActiveRecord::Base
  attr_accessible :exercise_id, :body_part_id, :name
  belongs_to :exercise
  belongs_to :body_part
  has_and_belongs_to_many :exercises
end
