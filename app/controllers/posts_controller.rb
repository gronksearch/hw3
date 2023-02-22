class PostsController < ApplicationController

    def show 
        @posts = Post.find_by({ "id" => params["id"] })
        @places = Places.find_by({ "id" => @places["place_id"] })
    end

    def new
        @posts = Post.new
        @places = Place.find_by({ "id" => params["place_id"] })
        @posts["places_id"] = @places["id"]
      end
    
      def create
        @posts = Post.new
        @posts["title"] = params["post"]["title"]
        @posts["posted_on"] = params["post"]["posted_on"]
        @posts["description"] = params["post"]["description"]
        @posts.save
        redirect_to "/places/#{@posts["places_id"]}"
    end

end
