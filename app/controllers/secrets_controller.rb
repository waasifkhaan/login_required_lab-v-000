class SecretsController < ApplicationController

  def show
    return head(:forbidden) unless session.include? :name
  end
end
