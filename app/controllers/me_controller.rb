class MeController < ApplicationController
  before_action :require_login
  

  #post/me/follow/:id
  def follow
    movie_id = params[:id]
    puts :id
    @movie = Movie.find (movie_id)
    
    current_user_id
  end

  #get/me/suggest
  def suggest
  end


  def follow_param
      params.require(:movie_id)
  end
end
