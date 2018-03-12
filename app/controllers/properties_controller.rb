class PropertiesController < ApplicationController
  require 'nokogiri'
  require 'open-uri'

  def index
      @properties = Property.where(user_id: current_user)
    # @properties = Property.order(created_at: :desc)
  end

  def create
    @property = Property.new(property_params)
    @property.portal_id = params[:portal_id]
    @property.user = current_user
    html_file = open(@property.prop_url).read
    @property.HTML = Nokogiri::HTML(html_file)
    @property.XML = Nokogiri::XML(html_file)
    # authorize @property
    # raise
    @property.save!
    redirect_to properties_path
  end

  def new
    @property = Property.new
    @portals = Portal.all
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
