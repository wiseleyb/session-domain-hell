
class DomainTestingAlt::DefaultController < ApplicationController

  layout "default"
  
  def index
    
  end

  def login
    session[:login] = "Bob Jones DomainTesting101"
    redirect_to "/"
  end

end
