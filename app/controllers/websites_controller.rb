class WebsitesController < ApplicationController
  def index
    @websites = Website.all
  end

  def new
    @website = Website.new
  end

  def create
    Website.create(website_params)
    redirect_to new_website_path
  end

  private

  def website_params
    params.require(:website).permit(:content)
  end

end
