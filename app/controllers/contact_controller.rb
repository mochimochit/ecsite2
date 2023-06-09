class ContactController < ApplicationController
  
  def contact
    @contact = Contact.new
  end

  def sending
    contact = Contact.new(contact_params)
    if contact.save
      ContactMailer.send_mail(contact).deliver_now
      redirect_to root_path
    else
      render action: :contact
    end
  end

  private
  def contact_params
    params.require(:contact).permit(:name, :email, :message)
  end
end
