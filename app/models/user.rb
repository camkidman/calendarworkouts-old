class User < ActiveRecord::Base
  attr_accessible :birthday, :birthmonth, :birthyear, :city, :country, :firstname, :lastname, :state, :username
end
