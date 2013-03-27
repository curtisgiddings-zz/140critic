module SearchHelper
	def tweetsearch(params)
	  if params[:search].include? 'movie'
		 Twitter.search( '"' + params[:search] + '"', :count => 15)
  	  else
  	  	 Twitter.search('"' + params[:search] + '"' + 'movie', :count => 15)
  	  end
  	end
end
