class PersonalDatum < ActiveRecord::Base
  attr_accessible :activity_level, :age, :bicep, :calves, :chest, :gender, :height, :hips, :shoulders, :thighs, :user_id, :waist, :weight
end
