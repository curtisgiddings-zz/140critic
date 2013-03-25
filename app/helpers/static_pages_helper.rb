module StaticPagesHelper
	def tweettest()
		Twitter.search("to:justinbieber marry me", :result_type => "recent").results.map do |status|
  		"#{status.from_user}: #{status.text}"
  		end
	end
end
