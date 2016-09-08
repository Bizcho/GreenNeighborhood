class Community < ActiveRecord::Base
	has_many :parks
	has_many :topics
	acts_as_marker
end
