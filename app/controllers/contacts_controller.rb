class ContactsController < ApplicationController
    before_action :authenticate_user!

    def new
        @contact = Contact.new
    end
    def create
        @contact = Contact.new(contact_params)
        if @contact.save
            ContactMailer.contact_mail(@contact).deliver_later
            redirect_to root_path, notice: '問い合わせ内容を受け付けました'
        else
            render :new
        end
    end

    private
    def contact_paramas
        params.require(:contact).permit(:email, :content)
    end
end