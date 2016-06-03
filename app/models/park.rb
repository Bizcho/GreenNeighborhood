class Park < ActiveRecord::Base
	has_many :services
	belongs_to :community
end
