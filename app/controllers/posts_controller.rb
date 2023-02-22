class PostsController < ApplicationController
    
    def index
        @posts = Post.all
    end
    
    def show 
        @name = Place.find_by({ "id" => params["id"] })
        @posts = Post.where({ "place_id" => @place["id"] })
    end

end
