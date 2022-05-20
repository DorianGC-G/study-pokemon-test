class ApplicationController < ActionController::Base
  # A user must be authenticated to use the app
  before_action :authenticate_user!
end
