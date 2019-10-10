class WebsitesController < ApplicationController
  before_action :set_website, only: [:show, :edit, :update]
  def index
    @websites = Website.all
  end

  def new
    @website = Website.new
  end

  def create
    @website = Website.new(website_params)
    if @website.save
      redirect_to new_website_path, notice: "投稿完了しました"
    else
      render :new
    end
  end

  def show
  end

  def edit
  end

  def update
    if @website.update(website_params)
      redirect_to website_path, notice: "編集完了"
    else
      render :edit
    end
  end

  private

  def website_params
    params.require(:website).permit(:content)
  end

  def set_website
    @website = Website.find(params[:id])
  end
end
