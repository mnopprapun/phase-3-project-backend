class Users < ActiveRecord::Base

	has_many :scores
	has_many :games, through: :scores
	

end