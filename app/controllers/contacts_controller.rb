class ContactsController < ApplicationController
    before_action :authenticate_user!

    def new
        @contact = Contact.new
    end

    def create
        @contact = Contact.new(contact_params)
        if @contact.save
            ContactMailer.contact_mail(@contact).deliver_now
            redirect_to new_contact_path, notice: '問い合わせ内容を受け付けました'
        else
            flash.now[:error] = '失敗しました'
            render :new
        end
    end

    private
        def contact_params
            params.require(:contact).permit(:email, :content)
        end
end