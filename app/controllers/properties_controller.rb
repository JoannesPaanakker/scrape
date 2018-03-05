class PropertiesController < ApplicationController

  def index
    @properties = Property.order(created_at: :desc)
  end

  def create
    @property = property.new(property_params)
    @property.user = current_user
    # authorize @property
    @property.save
    redirect_to properties_path
  end

  def new
    @property = property.new
    # authorize @property
  end

  def show
    @property = property.find(params[:id])
    # authorize @property
  end

  private

  def property_params
    params.require(:property).permit(:address, :description, :photo, :price, :prop_url, :XML, :HTML, :user_id, :portal_id)
  end
end
