class PlacesController < ApplicationController
  
  def index
    @places = Place.all
    @tasks = Task.search(params[:term], params[:page])
  end

end