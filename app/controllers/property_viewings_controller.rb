class PropertyViewingsController < ApplicationController
  def feed
    @property = current_user.feed_properties.first
    @property = Property.find(params[:id])
    # @properties  = Property.geocoded #returns flats with coordinates
    #  @properties = @properties.map do |property|
    #     {
    #       lat: flat.latitude,
    #       lng: flat.longitude
    #     }
    if @property.nil?
      # redirect_to somewhere
    else 
    @property_viewing = PropertyViewing.new
    end
  end

  def create
    property_viewing = PropertyViewing.new(property_viewing_params)
    property_viewing.user = current_user
    property_viewing.save
    redirect_to action: "feed"
  end

  def show
    @property_viewing = PropertyViewing.find(params[:id])
  end

  private

  def property_viewing_params
    params.require(:property_viewing).permit(
      :status,
      :property_id
    )
  end
end