class ActorsController < ApplicationController

	def index
		@list_of_actors = Actor.all
	end

	def new_form
	end

	def new_actor
		a = Actor.new
		a.image_url = params[:the_image]
		a.name = params[:the_name]
		a.bio = params[:the_bio]
		a.dob = params[:the_dob]
		a.save

		redirect_to("http://localhost:3000/actors")
	end

	def show
		@actor = Actor.find_by({ :id => params[:id]})
	end

	def edit_form
		@actor = Actor.find_by({ :id => params[:id]})
	end

	def update_actor
		a = Actor.find_by({ :id => params[:id]})
		a.name = params[:the_name]
		a.bio = params[:the_bio]
		a.dob = params[:the_dob]
		a.save

		redirect_to("http://localhost:3000/actors")
	end

	def destroy
		a = Actor.find_by({ :id => params[:id]})
		a.destroy

		redirect_to("http://localhost:3000/actors")
	end


end
