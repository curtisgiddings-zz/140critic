class SearchController < ApplicationController
  def index
  	@movie = TmdbMovie.find(:title => params[:search], :limit => 1)
  	@cast = Tmdb.api_call('movie/casts', {:id => @movie.id}, "en")
  	@images = Tmdb.api_call("movie/images", {:id => @movie.id}, "en")
  end
end
