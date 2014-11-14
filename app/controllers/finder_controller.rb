class FinderController < ApplicationController
	def index
		 @customers = Customer.all
	end

	def alphabetized
		@customers = Customer.all.order(fullname)
	end

	def missing_email
		if params[:emailAddress] == ""
			@customers += Customer
		end if
	end
end
