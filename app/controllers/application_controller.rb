class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_filter :load_behance_images

  layout -> { false if request.xhr? }

  private

  def load_behance_images
    @behance_images = BRBehanceClient::Projects.new.all
  end

  def contact_params
    params.require(:contact).permit(:full_name, :email_address, :comments)
  end
end
