class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_filter :set_locale

  private
	  def set_locale
	    I18n.locale = params[:locale] if params[:locale].present?
	    Rails.application.routes.default_url_options[:locale] = I18n.locale
	  end

	  def default_url_options(options = {})
	    {locale: I18n.locale}
	  end
end
