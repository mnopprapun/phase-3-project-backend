class Games  < ActiveRecord::Base

	has_many :users
	has_many :scores

end
