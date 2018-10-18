class SessionsController < ApplicationController
    before_action :require_logged_in

    def new
    end


    def create
      if session[:name].empty?
        redirect_to login_path
      else
        user = User.create(name: session[:name])
      end
    end



end
