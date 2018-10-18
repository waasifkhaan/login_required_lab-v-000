class SessionsController < ApplicationController

  def current_user
    @current_user ||= User.find(params[sessions[:id]])
  end 
end
