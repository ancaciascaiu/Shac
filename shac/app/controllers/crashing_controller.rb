class CrashingController < ApplicationController
  
  def show
  	@crashing = Crashing.find(params[:id])
  end
  
  def edit
  	@crashing = Crashing.find(params[:id])
  end  
  
  def update
  	@crashing = Crashing.find(params[:id])
  end  

end
