class ApplicationController < ActionController::Base
    
  def generate_nav
    @pages = Page.order('title ASC').where(publish: true)
  end
  helper_method :generate_nav

  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
end
