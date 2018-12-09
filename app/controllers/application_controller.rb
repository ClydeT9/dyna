class ApplicationController < ActionController::Base
    layout proc{|c| c.request.xhr? ? false : "application" } #permet d'avoir un render différent avec js et html (render false pour les modal)
    before_action :set_locale

    private

    def set_locale
        I18n.locale = params[:locale] || I18n.default_locale
        Rails.application.routes.default_url_options[:locale]= I18n.locale 
    end
    def default_url_options
        { locale: I18n.locale }
      end
end
