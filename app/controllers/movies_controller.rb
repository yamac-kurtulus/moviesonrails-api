# frozen_string_literal: true

class MoviesController < ApplicationController

  # GET /movies
  def index
    render json: Movie.all
  end

  # GET /movies/1
  def show
    render json: @movie
  end  
end
