class PersonalInfo < ActiveRecord::Base
  attr_accessible :activity_level, :age, :bicep, :calves, :chest, :gender, :height, :hips, :shoulders, :thighs, :user_id, :waist, :weight
  belongs_to :user
  has_paper_trail
end
