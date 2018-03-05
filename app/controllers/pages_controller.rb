class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]

  def homepage
  end

  def index
  end
end
