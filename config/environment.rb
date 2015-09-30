# Load the Rails application.
require File.expand_path('../application', __FILE__)

# Initialize the Rails application.
Rails.application.initialize!

# kobe added for debug used
#class Logger
#	def format_message(serverity, timestamp, progname, msg)
#		"#{timestamp} (#{$$}) #{msg}\n"
#	end
#end

# kobe according to rails guide testing logging
#Rails.logger = Logger.new(STDOUT)
#Rails.logger.level= 0
#result:display log twice
