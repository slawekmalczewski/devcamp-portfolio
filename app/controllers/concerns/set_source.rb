module SetSource
  extend ActiveSupport::Concern

  included do
    before_action :set_source
  end

  def set_source
    # in session I create variable SOURCE and assigned to it a query string
    # that would appear after character "q" e.g. www.portfolio/4?q=twitter
    session[:source] = params[:q] if params[:q]
  end
end
