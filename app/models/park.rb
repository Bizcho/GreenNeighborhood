class Park < ActiveRecord::Base
	has_many :services
	belongs_to :community
	has_many :wifi_devices
end
