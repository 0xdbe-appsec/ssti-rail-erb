class HomeController < ApplicationController
  skip_before_action :verify_authenticity_token

  def index
    name = params.has_key?(:name) ? params[:name] : "world"
    message = "Hello " + name + "!"
    template = message
    render :inline => template, :layout => "application"
  end
end
