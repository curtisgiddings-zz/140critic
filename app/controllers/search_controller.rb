class SearchController < ApplicationController
  def index
  	@movie = TmdbMovie.find(:title => params[:search], :limit => 1)
    unless @movie.empty?
      @cast = Tmdb.api_call('movie/casts', {:id => @movie.id}, "en")
      @images = Tmdb.api_call("movie/images", {:id => @movie.id}, "en")
    end
  	@tweets = tweetsearch(params[:search])
  end

  def tweetsearch(search)
	  if search.include? 'movie'
		 Twitter.search( '"' + search + '"', :count => 20)
  	  else
  	  	 Twitter.search('"' + search + '"' + 'movie', :count => 20)
  	  end
  	end
end
