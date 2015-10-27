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

end
