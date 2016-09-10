class Car < ActiveRecord::Base
	#here we have hardcoded cars - bad but it works, may be later rewrite and find by names 
	
	def self.suv
	  find(1)
	end

	def self.sedan
	  find(2)
	end

	def self.van
	  find(3)
	end

	def self.bus
	  find(4)
	end
	
	def self.limo
	  find(5)
	end
	
	def self.rv
	  find(6)
	end
end
