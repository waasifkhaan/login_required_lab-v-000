class SessionsController < ApplicationController
    before_action :require_logged_in

    def new
    end


    def create
      return redirect_to(controller: 'sessions',
                      action: 'new') if !params[:name] || params[:name].empty?
   session[:name] = params[:name]
   user = User.new(name: params[:name])
   user.save
   user.name
   redirect_to controller: 'application', action: 'hello'
    end

    def destroy
    session[:name] = nil
    redirect_to controller: 'application', action: 'hello'
  end



end
