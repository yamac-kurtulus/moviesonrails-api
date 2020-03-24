# frozen_string_literal: true

class MoviesController < ApplicationController
  before_action :set_movie, only: %i[show update destroy]

  # GET /movies
  def index
    @movies = Movie.all

    render json: @movies
  end

  # GET /movies/1
  def show
    render json: @movie
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_movie
    @movie = Star.find(params[:id])
  end

  # Only allow a trusted parameter "white list" through.
  def movie_params
    params.require(:movie).permit(:title, :imdb_id, :imdb_rating, :poster_url, :plot)
  end
end
