module SearchHelper
	def tweetsearch(params)
	  if params[:search].include? 'movie'
		    @tweets = Twitter.search( '"' + params[:search] + '"', :count => 15)
  	  else
  	  	 @tweets = Twitter.search('"' + params[:search] + '"' + 'movie', :count => 15)
  	  end
  	end
end
