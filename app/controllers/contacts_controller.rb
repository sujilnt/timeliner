class ContactsController < ApplicationController
  skip_before_action :authenticate_user!

  def create
    user = User.fetch(params[:user_id])
    message_center = MessageCenter.new(user)
    contact_request = Message.new(params[:message])

    message_center.notify_contact_request(contact_request, user)
  end
end
