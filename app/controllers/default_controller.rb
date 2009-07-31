
class DefaultController < ApplicationController

  layout "default"

  def index
    
  end

  def login
    session[:login] = "Bob Jones"
    redirect_to "/"
  end

end
