class StaticPagesController < ApplicationController

 def home
  render "index"
end
def sedan
  @page = "sedan"
  render "services/_sedan"
end
def book 
  @client_token = Braintree::ClientToken.generate

end
def rv 
  @page = "rv"
  render "services/_rv"
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
def payment 
  @client_token = Braintree::ClientToken.generate
  render "payment/_form"
end

def checkout
  nonce = params[:payment_method_nonce]
  render action: :payment and return unless nonce
  result = Braintree::Transaction.sale(
    amount: "33.00",
    payment_method_nonce: nonce
    )
  if result.success?
    flash[:notice] = "Sale successful." 
    redirect_to "/success"
  else 
    flash[:alert] = "Something is wrong. #{result.transaction.processor_response_text}"
    payment
  end
#end checkout function
end

def success 
  render "payment/success"
end
#end of class
end