class ApplicationController < ActionController::Base
  protect_from_forgery
  
  rescue_from Exception, :with => :render_all_errors
  
  def route_not_found
    render :template => 'errors/404', :status => 404
  end
  
  private
  
    def render_all_errors(exception)
      logger.error "\n\n\nException caught: #{exception}\n\n"
      logger.error exception.backtrace.join("\n")
      
      if Rails.env.production?
        render :template => 'errors/500', :status => 500
      else
        raise exception
      end
    end

end
