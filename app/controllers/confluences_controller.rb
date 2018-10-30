class ConfluencesController < ApplicationController

	def getcontent
		@response = RestClient::Request.execute(
			method: :get,
			url: 'https://cloudchomp.atlassian.net/wiki/rest/api/content/',
			headers: {Authorization: 'Basic YXNtaXQucmFqYmhhbmRhcmlAY2xvdWRjaG9tcC5jb206cHJvQ0FCOTkrKw=='}
		)
		# @response = RestClient.get( 'https://cloudchomp.atlassian.net/wiki/rest/api/content/', headers: {Authorization: 'Basic YXNtaXQucmFqYmhhbmRhcmlAY2xvdWRjaG9tcC5jb206cHJvQ0FCOTkrKw=='})
	end
end
