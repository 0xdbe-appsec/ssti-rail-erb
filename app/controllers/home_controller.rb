class HomeController < ApplicationController
  skip_before_action :verify_authenticity_token

  def index
    message = "Hello " + params[:name] + "!"
    template = message + " <%= 1+2 %>"
    render :inline => template, :layout => "application"
  end
end
