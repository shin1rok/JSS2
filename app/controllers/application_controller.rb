class ApplicationController < ActionController::Base
  # TODO 他のユーザもいるので↓だけでは不十分
  before_action :authenticate_job_seeker!
end
