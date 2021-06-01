class User < ActiveRecord::Base

	has_many :results
	has_many :games, through: :results
	

end