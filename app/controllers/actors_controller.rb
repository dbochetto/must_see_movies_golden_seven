class ActorsController < ApplicationController

def index
	@list_of_actors = Actor.all
end

end
