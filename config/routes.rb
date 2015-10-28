Rails.application.routes.draw do

#Where server will initially take user
 get("/", { :controller => "movies", :action => "index" })
 
 #Routes for Movies:
 #Routes to create new movies:
 get("/movies/new", { :controller => "movies", :action => "new_form" })
 get("/movies/create_movie", { :controller => "movies", :action => "new_movie" })
 #Routes to read movies:
 get("/movies", { :controller => "movies", :action => "index"})
 get("/movies/:id", { :controller => "movies", :action => "show"})
 #Routes to edit movies:
 get("/movies/edit/:id", { :controller => "movies", :action => "edit_form"})
 get("/movies/update_movie/:id", { :controller => "movies", :action => "update_movie"})
 #Routes to delete movies:
 get("/movies/delete_movie/:id", { :controller => "movies", :action => "destroy"})

 #Routes for Directors
 #Routes to create new directors:
 get("/directors/new", { :controller => "directors", :action => "new_form"})
 get("/directors/create_director", { :controller => "directors", :action => "new_director"})

 #Routes to read directors:
 get("/directors", { :controller => "directors", :action => "index"})
 get("/directors/:id", { :controller => "directors", :action => "show"})
 #Routes to edit directors:
 get("/directors/edit/:id", { :controller => "directors", :action => "edit_form"})
 get("/directors/update_director/:id", { :controller => "directors", :action => "update_director"})
 #Routes to delete directors:
 get("/directors/delete_director/:id", { :controller => "directors", :action => "destroy"})

#Routes for Actors:
#Routes to create new actors
get("/actors/new", { :controller => "actors", :action => "new_form"})
get("/actors/create_actor", { :controller => "actors", :action => "new_actor"})
#Routes to read actors:
 get("/actors", { :controller => "actors", :action => "index"})
 get("/actors/:id", { :controller => "actors", :action => "show"})
 #Routes to edit actors:
 get("/actors/edit/:id", { :controller => "actors", :action => "edit_form"})
 get("/actors/update_actor/:id", { :controller => "actors", :action => "update_actor"})
 #Routes to delete actors:
 get("/actors/delete_actor/:id", { :controller => "actors", :action => "destroy"})

end
