# Filters added to this controller apply to all controllers in the application.
# Likewise, all the methods added will be available for all controllers.

class ApplicationController < ActionController::Base
  helper :all # include all helpers, all the time
  #protect_from_forgery # See ActionController::RequestForgeryProtection for details

  # Scrub sensitive parameters from your log
  # filter_parameter_logging :password
  before_filter :set_session_domain
  
  def set_session_domain
    
   #none of these seemed to work
   
   #self.class.session_options[:session_domain] = ".#{request.domain}"

   #ActionController::CgiRequest::DEFAULT_SESSION_OPTIONS.update(:session_domain => '.domain-testing.com')

   # domain = ".domain-testing.com"
   # cookies = session.instance_eval("@dbprot")
   # unless cookies.blank?
   #   cookies.each do |cookie|
   #     options = cookie.instance_eval("@cookie_options")
   #     options["domain"] = domain unless options.blank?
   #   end
   # end
  end

  def logout
    reset_session
    session[:login] = nil
    redirect_to "/"
  end
  
end
