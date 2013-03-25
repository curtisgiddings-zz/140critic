module SearchHelper
	def tweetsearch(params)
		Twitter.search(params[:search], :result_type => "recent").results.map do |status|
  		"#{status.from_user}: #{status.text}"
  		end
  	end
end
