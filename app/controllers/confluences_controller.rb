class ConfluencesController < ApplicationController

	def getspacelist
		@response = RestClient::Request.execute(
			method: :get,
			url: 'https://cloudchomp.atlassian.net/wiki/rest/api/space/',
			headers: { Authorization: 'Basic YXNtaXQucmFqYmhhbmRhcmlAY2xvdWRjaG9tcC5jb206cHJvQ0FCOTkrKw==' }
		)

	end

	def getspacechildren
		@response = RestClient::Request.execute(
			method: :get,
			url: 'https://cloudchomp.atlassian.net/wiki/rest/api/content/5177345/child/page?expand=children.page',
			headers: { Authorization: 'Basic YXNtaXQucmFqYmhhbmRhcmlAY2xvdWRjaG9tcC5jb206cHJvQ0FCOTkrKw==' }
		)
	end

end
