class ContactsController < ApplicationController
  def create
    @contact = Contact.new(contact_params)
    if @contact.save
      flash[:success] = 'Thank you for contacting me.'
      redirect_to root_path
    else
      render '/home/index'
    end
  end

end
