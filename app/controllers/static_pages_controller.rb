class StaticPagesController < ApplicationController
  def home
  	#This will be added once the pull request for the ruby-tmdb 
  	#gem update gets accepted.
  	#@movies = Tmdb.api_call('movie/now_playing', {:page => 1}, "en")
  end

  def about
  end
end
