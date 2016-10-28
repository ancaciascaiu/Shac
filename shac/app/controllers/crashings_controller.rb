class CrashingsController < ApplicationController
  
	def index
		@crashings = Crashing.all
		redirect_to crashings_path
	end

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
