class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  attr_accessible :birthday, :birthmonth, :birthyear, :city, :country, :firstname, :lastname, :state, :username, :personal_info_id, :email, :password, :password_confirmation, :remember_me
  attr_accessible :personal_info_attributes
  has_one :personal_info, dependent: :destroy
  # accepts_nested_attributes_for :personal_info
  	#														:reject_if => #insert helper(?) that will use the previous value if not updated,
  	#														:allow_destroy => true

end
