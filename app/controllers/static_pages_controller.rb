class StaticPagesController < ApplicationController

 def home
  render "index"
end
def sedan
  @page = "sedan"
  render "services/_sedan"
end
def book 

end
def estimate 

end
def suv 
 @page = "suv"

 render "services/_suv"

end
def limo 
  @page = "limo"

  render "services/_limo"
end
def hummer 
  @page= "hummer"
  render "services/_hummer"
end

def bus 
  @page = "bus"
  render "services/_bus"
end

def classic 
  @page = "wedding"
  render "services/_classic"
end

end#end of class