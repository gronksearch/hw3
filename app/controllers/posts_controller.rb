class PostsController < ApplicationController
    
    def index 
        @posts = Post.all 
    end

    def new
        @post = Post.new
        @post["place_id"] = params["place_id"]
    end
    
    def create
        @post = Post.new
        @post["title"] = params["post"]["title"]
        @post["posted_on"] = params["post"]["posted_on"]
        @post["description"] = params["post"]["description"]
        @post["place_id"] = params["post"]["place_id"]
        @post.save
        redirect_to "/places"
    end

end
