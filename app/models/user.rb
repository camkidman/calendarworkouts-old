class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  attr_accessible :birthday, :birthmonth, :birthyear, :city, :country, :firstname, :lastname, :state, :username
  has_one :personal_data, dependent: :destroy
end
