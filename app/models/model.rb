class Model < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable :registerable,
  devise :database_authenticatable, 
         :recoverable, :rememberable, :trackable, :validatable

 	def self.suv
	  find(1)
	end
end
