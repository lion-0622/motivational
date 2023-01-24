class PostsController < ApplicationController
    def genki
        @tweets = Tweet.all
    end
    
    def yaruki
        @tweets = Tweet.all
    end
    
    private
    def tweet_params
      params.require(:tweet).permit(:cotent,:category) 
    end
end
