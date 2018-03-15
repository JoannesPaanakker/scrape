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
    elsif current_user.comp_name == "Townresidential"
      comp_town(doc)
    elsif current_user.comp_name == 'Kleier Residential'
      comp_kleier(doc)
    else
      # do this
    end
  end

  def comp_kleier(doc)
    @property.address = doc.search('.prop-info')[0].text + " " + doc.search('.prop-info')[5].text
    @property.price = doc.search('.prop-info')[3].text

    @property.description = doc.search('p')[20].text
    @property.photo = @property.user.comp_url + doc.search('img')[2].attr('src')
  end

  def comp_town(doc)
    @property.address = doc.search('.address').text + doc.search('.locality')[0].text
    @property.price = doc.search('.price__value')[0].text
    @property.description = doc.search('.p').text
    @property.photo = doc.search('.photo')[2].attr('src')
  end

  def comp_evk(doc)
    # @property.address = doc.search('.ev-exposee-content').search('.ev-exposee-subtitle') #ad postal code and locality
    @property.description = doc.search('.ev-exposee-text').text
    @property.price = doc.search('.ev-key-fact-value').text
    @property.photo = "https://images.duckduckgo.com/iu/?u=https%3A%2F%2Fcdn.pixabay.com%2Fphoto%2F2013%2F07%2F13%2F11%2F54%2Fhouse-158939_640.png&f=1"
    @property.photo = doc.search('.smartimage__item').attr("src").value
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
