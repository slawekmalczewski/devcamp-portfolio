class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  include DeviseWhitelist

  before_action :set_source

  def set_source
    # in session I create variable SOURCE and assigned to it a query string
    # that would appear after character "q" e.g. www.portfolio/4?q=twitter
    session[:source] = params[:q] if params[:q]
  end

end
