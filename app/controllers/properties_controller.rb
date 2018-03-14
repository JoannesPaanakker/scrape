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
    # @property.XML = Nokogiri::XML(html_file)
    get_data_from_HTML(Nokogiri::HTML(html_file))
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
    @property = Property.find(params[:id])
    # authorize @property
  end

  def destroy
    @property = Property.find(params[:id])
    @property.destroy
    redirect_to properties_path
  end

  def get_data_from_HTML(doc)
    if current_user.comp_name == "Booij Makelaars"
      comp_booij(doc)
    elsif current_user.comp_name == "Engel & Völkers"
      comp_evk(doc)
    else
      # do this
    end
  end

  def comp_evk(doc)
    # @property.address = doc.search('.ev-exposee-content').search('.ev-exposee-subtitle') #ad postal code and locality
    @property.description = doc.search('.ev-exposee-text').text
    @property.price = doc.search('.ev-key-fact-value').text
    @property.photo = "//www.clipartbest.com/cliparts/LcK/Bjz/LcKBjzBca.jpeg"
  end

  def comp_booij(doc)
    @property.address = doc.search('.street-address').text #ad postal code and locality
    @property.price = doc.search('.saleprice').text
    @property.description = doc.search('#Omschrijving').text
    a = doc.search('.foto_')
    if !a.empty?
      @property.photo = doc.search('.foto_').attr("src").value
    end
  end

  private

  def property_params
    params.require(:property).permit(:address, :description, :photo, :price, :prop_url, :XML, :HTML, :user_id, :portal_id)
  end
end
