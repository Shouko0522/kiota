class PropertyViewingsController < ApplicationController
  def feed
    @property = current_user.feed_properties.first
    if @property.nil?
      # redirect_to somewhere
    else 
      @property_viewing = PropertyViewing.new
      @pets_tag = @property.pets == current_user.pets
      @bar_tag = @property.bar_nearby == current_user.wants_bar_nearby
      @cafe_tag = @property.cafe_nearby == current_user.wants_cafe_nearby

      if current_user.wants_first_floor
        @floor_tag = (@property.floor == 1)
      end

      if current_user.wants_supermarket_nearby
        @supermarket_tag = (@property.distance_to_supermarket < 10)
      end

      if current_user.wants_park_nearby
        @park_tag = (@property.distance_to_park < 10)
      end
      
      if current_user.key_money
        @zero_key_money_tag = (@property.key_money = 0)
      end
      
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