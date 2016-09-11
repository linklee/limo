class Text < ActiveRecord::Base
	#main h1 header 
	def self.h1
		find(1)
	end
end
