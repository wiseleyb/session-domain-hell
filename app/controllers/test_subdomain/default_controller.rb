
class TestSubdomain::DefaultController < ApplicationController

  layout "default"
  
  def index
    
  end

  def login
    session[:login] = "Bob Jones TestSubdomain"
    redirect_to "/"
  end

end
