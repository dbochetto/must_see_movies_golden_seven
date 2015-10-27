class MoviesController < ApplicationController
	def index
		@list_of_movies = Movie.all
	end

	def show
		@movie = Movie.find_by({ :id => params[:id]})
	end

	def new_form
	end

	def new_movie
		m = Movie.new
		m.image_url = params[:the_image]
		m.title = params[:the_title]
		m.year = params[:the_year]
		m.duration = params[:the_duration]
		m.description = params[:the_description]
		m.save

		redirect_to("http://localhost:3000/movies")
	end

	def edit_form
		@movie = Movie.find_by({ :id => params[:id]})
	end

	def update_movie
		m = Movie.find_by({ :id => params[:id]})
		m.image_url = params[:the_image]
		m.title = params[:the_title]
		m.year = params[:the_year]
		m.duration = params[:the_duration]
		m.description = params[:the_description]
		m.save

		redirect_to("http://localhost:3000/movies")
	end

	def destroy
		m = Movie.find_by({ :id => params[:id]})
		m.destroy

		redirect_to("http://localhost:3000/movies")
	end


end