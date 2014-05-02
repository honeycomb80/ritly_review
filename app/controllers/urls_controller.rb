class UrlsController < ApplicationController

  def new
    @url = Url.new
  end

  def create
    url = Url.new url_params
    url.random_string = SecureRandom.urlsafe_base64(6)
    url.save
    redirect_to url
  end

  def show
    @url = Url.find(params[:id])
  end

  private
    def url_params
      params.require(:url).permit(:link)
    end
end
