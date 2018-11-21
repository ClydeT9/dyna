class ApplicationController < ActionController::Base
    layout proc{|c| c.request.xhr? ? false : "application" } #permet d'avoir un render différent avec js et html (render false pour les modal)
end
