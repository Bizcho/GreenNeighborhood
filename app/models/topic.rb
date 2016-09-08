class Topic < ActiveRecord::Base
	has_many :comments
	belongs_to :communiy
	markable_as :liked
end
