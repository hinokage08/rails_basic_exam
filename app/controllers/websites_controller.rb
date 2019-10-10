class WebsitesController < ApplicationController
  def index
  end

  def new
    Website.new
  end
end
