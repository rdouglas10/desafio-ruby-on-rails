class HomeController < ApplicationController
  
  def index
    @dados = Home.all
  end

  def upload
    @service = HomeService.new(params[:archive]).call    
  end


end
