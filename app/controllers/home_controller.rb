class HomeController < ApplicationController
  def index
    @contact = Contact.new(contact_params)
  end

  private

  def contact_params
    return unless params[:contact]
    super
  end

end
