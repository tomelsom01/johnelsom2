class ContactsController < ApplicationController
  def index
    @contact = Contact.all
  end

  def new
    @contact = Contact.new
  end

  def create
    @contact = Contact.new(contact_params)

    if @contact.deliver
      flash[:notice] = 'Thank you! Your message has been sent successfully.'
    else
      flash[:alert] = 'Oops! Something went wrong. Please check the form and try again.'
    end
    redirect_to emailform_path
  end

  private

  def contact_params
    params.require(:contact).permit(:name, :email, :message)
  end

end
