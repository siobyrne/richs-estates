class ListingsController < ApplicationController
	before_action :logged_in_user, only: [:create, :destroy]
	
	def index
		@listings = Listing.all
	end
	
	def create
		@listing = current_user.listings.build(listing_params)
		if @listing.save
			flash[:success] = "Listing added."
			redirect_to root_url
		else
		end
	end
	
	def new
		
	end
		
	def destroy
	end
	
	private
		def listing_params
			params.require(:listing).permit(:content)
		end
end
