class PropertyViewingsController < ApplicationController
  def feed
    @property = current_user.feed_properties.first
    @property = Property.find(params[:id])

  end

  def create
    current_user.property_viewings.create(status: params[:status])
    redirect :feed
  end

  def show
    @property_viewing = PropertyViewing.find(params[:id])
  end
end
