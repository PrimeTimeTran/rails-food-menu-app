class HomeController < ApplicationController
  def index
  end

  def menu
    if params[:section]
      @section = Section.where(name: params[:section]).first
    end
  end

  def contact_us
  end

end
