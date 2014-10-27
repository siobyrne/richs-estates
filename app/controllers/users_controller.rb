class UsersController < ApplicationController
	def show
		@user = User.find(params[:id])
		@listings = @user.listings.paginate(page: params[:page])
	end
	
  def new
		redirect_to root_url
  end
	
	def index
		redirect_to root_url
	end
end
