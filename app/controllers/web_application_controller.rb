class WebApplicationController < ApplicationController
  layout 'webapp'
  before_action :authenticate_user!
end
