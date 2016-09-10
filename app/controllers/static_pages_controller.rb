class StaticPagesController < ApplicationController

 def home
  @cars = Car.all
  render "index"
end
def sedan
  @page = "sedan"
  @car = Car.sedan
  render "services/_sedan"
end
def book 
  if params['page'] == 'bus'
    render "static_pages/book_bus"
  end
  @client_token = Braintree::ClientToken.generate
  if params['page'] == 'sedan'
    params['price'] = params['price'].to_i * Car.sedan.price1 
  end
  if params['page'] == 'bus' or params['page'] == 'rv'
    @show_brain_tree = false 
  end
end
def book_wine_tours
  @client_token = Braintree::ClientToken.generate
end
def rv 
  @page = "rv"
  @car = Car.rv
  render "services/_rv"
end
def estimate 

end
def suv 
 @page = "suv"
 @car = Car.suv
 render "services/_suv"
end
def limo 
  @page = "limo"
  @car = Car.limo
  render "services/_limo"
end
def hummer 
  @page= "7 passenger Van"
  @car = Car.van
  render "services/_hummer"
end

def bus 
  @page = "bus"
  @car = Car.bus
  render "services/_bus"
end

def classic 
  @page = "wedding"
  render "services/_classic"
end
def payment 
  @client_token = Braintree::ClientToken.generate
  render "payment/_form"
end

def checkout
  
  nonce = params[:payment_method_nonce]
  render action: :payment and return unless nonce
  result = Braintree::Transaction.sale(
    amount: params['price'].to_i,
    payment_method_nonce: nonce
    )

  if result.success?
    #flash[:notice] = "Sale successful." 
    redirect_to "/success"
  else 
    flash[:alert] = "Something is wrong. #{result.message}"  
    redirect_to request.referrer
  end
#end checkout function
end
def checkout_bus 
    render "payment/success"
end
def success 
  render "payment/success"
end
#end of class
end