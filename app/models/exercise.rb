class Exercise < ActiveRecord::Base
  attr_accessible :difficulty, :movement_type, :name
  has_and_belongs_to_many :workouts
  has_and_belongs_to_many :muscle_groups
  has_and_belongs_to_many :body_parts
end
