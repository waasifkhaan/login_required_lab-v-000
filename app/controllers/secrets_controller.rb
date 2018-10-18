class SecretsController < ApplicationController
  before_action :require_logged_in

  def show
    if !session.include? :name
      redirect_to root_path 
    end 
  end
end
