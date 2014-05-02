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

  def go
    url = Url.find_by(random_string: params[:random_string])
    if url
      redirect_to url.link
    else
      flash[:error] = "Sorry, ritly doesn't know that link"
      redirect_to root_path
    end
  end

  private
    def url_params
      params.require(:url).permit(:link)
    end
end
