class UsersController < ApplicationController
	before_filter :authenticate_user!#, :except => [:show, :index]	
	def index
		@users=User.all
		respond_to do |format|
      		format.html # index.html.erb
      		format.json { render json: @users }
    	end
	end
	
	def show
		@user=User.find(params[:id])

    	respond_to do |format|
      		format.html # show.html.erb
      		format.json { render json: @user }
    	end
  	end
end