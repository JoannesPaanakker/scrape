class PortalsController < ApplicationController
  def index
    @portals = Portal.all
  end
end
