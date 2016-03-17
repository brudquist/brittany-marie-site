class ContactsController < ApplicationController
  def create
    @contact = Contact.new(contact_params)
    if @contact.save
      flash[:success] = 'Thank you for contacting me.'
      @contact = Contact.new
      @contact_created = true
      render '/home/index'
    else
      render '/home/index'
    end
  end

end
