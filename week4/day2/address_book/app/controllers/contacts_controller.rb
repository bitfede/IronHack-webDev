class ContactsController < ApplicationController

	def index

		@contacts  = Contact.all
		render('index')
	end

	def new
		render('new')
	end

	def create
		# Create new Contact from params[:contact]
    contact = Contact.new(
      :name => params[:contact][:name],
      :address => params[:contact][:address],
      :phone_number => params[:contact][:phone_number],
      :email => params[:contact][:email])

    	if (contact.name == "" || contact.address == "")
    		puts "--------------------------"
    		puts "ERROR, CANNOT SAVE CONTACT"
    		puts "--------------------------"
    		redirect_to('/contacts')
    		#do stuff
    	else
	    	contact.save
		    # Render contact's attributes
		    redirect_to('/contacts')
		  end
	end

	def show

		contactID = params[:id]
		@contact = Contact.where("id=?", contactID)

		render('show')

	end

end

