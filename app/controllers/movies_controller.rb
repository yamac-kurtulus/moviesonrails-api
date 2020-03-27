# frozen_string_literal: true

class MoviesController < ApplicationController
  before_action require_login, only: [:show, :index]

  # GET /movies
  def index
    render json: Movie.all
  end

  # GET /movies/1
  def show
    render json: @movie
  end

  # Patch /movies/1/follow
  def follow
    user = current_user    
  end

  private
  def follow_params
    params.require(:movie).permit(:id)
  end


end
