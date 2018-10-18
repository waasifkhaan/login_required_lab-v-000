class SessionsController < ApplicationController
    before_action :require_logged_in

    def new
    end


    def create
      return redirect_to(controller: 'sessions',
                      action: 'new') if !params[:name] || params[:name].empty?
   session[:name] = params[:name]
   user = User.create(name: params[:name]).name
   redirect_to controller: 'application', action: 'hello'
    end



end
