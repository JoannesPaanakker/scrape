  class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:homepage]

  def homepage
  end

  def dashboard
    # @current_user = current_user
    @properties = Property.where(user_id: current_user)
    @nr_of_prop = @properties.count
    @arr = []
    @hash = {}
    @properties.each do |prop|
      if @arr.include?(prop.portal.name)
        @hash[prop.portal.name] += 1
      else
        @arr << prop.portal.name
        @hash.store(prop.portal.name, 1)
      end
    end
  end

  private

  def resource_name
    :user
  end
  helper_method :resource_name

  def resource
    @resource ||= User.new
  end
  helper_method :resource

  def devise_mapping
    @devise_mapping ||= Devise.mappings[:user]
  end
  helper_method :devise_mapping

  def resource_class
    User
  end
  helper_method :resource_class
end
