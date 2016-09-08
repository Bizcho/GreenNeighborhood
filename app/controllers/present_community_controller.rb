class PresentCommunityController < ApplicationController
	layout "web_application"
	def index
		@communities = Community.all
	end
end
