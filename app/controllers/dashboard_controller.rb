class DashboardController < ApplicationController
  def index
    @properties = current_user.properties
  end
end
