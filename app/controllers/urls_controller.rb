class UrlsController < ApplicationController

  def new
    @url = Url.new
  end

  def create
    url = Url.new url_params
    url.random_string = SecureRandom.urlsafe_base64(6)
    if url.save
      redirect_to url
    else
      flash[:error] = "The url could not be saved.  Try again"
      redirect_to root_path
    end
  end

  def show
    @url = Url.find(params[:id])
    @visits = @url.visits
  end

  def go
    url = Url.find_by(random_string: params[:random_string])
    if url
      url.visits.create
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
