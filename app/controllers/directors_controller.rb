class DirectorsController < ApplicationController
	def index
		@list_of_directors = Director.all
	end

	def new_form
	end

	def new_director
		d = Director.new
		d.image_url = params[:the_image]
		d.name = params[:the_name]
		d.bio = params[:the_bio]
		d.dob = params[:the_dob]
		d.save

		redirect_to("http://localhost:3000/directors")
	end

	def show
		@director = Director.find_by({ :id => params[:id]})
	end

	def edit_form
		@director = Director.find_by({ :id => params[:id]})
	end

	def update_director
		d = Director.find_by({ :id => params[:id]})
		d.image_url = params[:the_image]
		d.name = params[:the_name]
		d.bio = params[:the_bio]
		d.dob = params[:the_dob]
		d.save

		redirect_to("http://localhost:3000/directors")
	end

	def destroy
		d = Director.find_by({ :id => params[:id]})
		d.destroy
		d.save

		redirect_to("http://localhost:3000/directors")
	end

end