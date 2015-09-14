class EpisodesController < ApplicationController
  
  def index
  	@episodes = Episode.all
  end
  
  def destroy
  	# puts "******* " + params[:id]
  	Episode.find(params[:id]).destroy
	redirect_to episodes_path
  end

end
