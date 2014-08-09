class HomeController < ApplicationController
  def index
    @behance_images = BRBehanceClient::Projects.new.all
  end

end
