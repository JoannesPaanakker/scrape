class PackagesController < ApplicationController
  def index
    @packages = Package.all
  end

  def show
    @package = package.find(params[:id])
  end
end
