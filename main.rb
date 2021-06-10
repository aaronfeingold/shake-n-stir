require 'shaken_not_stirred'
require 'pry'
require 'dotenv'


def search(name)
	filter = get_filter()
	filter.by_name(name)
	results = filter.results
	return results
end

def get_filter
	Dotenv.load
	token = ENV['TOKEN']
	ShakenNotStirred.configure do |config|
		config.api_key=token
	end
	
	filter = ShakenNotStirred.new
	return filter
end

name = "ginger"
search(name)