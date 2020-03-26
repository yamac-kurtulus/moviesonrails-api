# frozen_string_literal: true

class StarsController < ApplicationController
  before_action :set_star, only: %i[show update destroy]

  # GET /stars
  def index
    @stars = Star.all

    render json: @stars
  end

  # GET /stars/1
  def show
    render json: @star
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_star
    @star = Star.find(params[:id])
  end

  # Only allow a trusted parameter "white list" through.
  def star_params
    params.require(:star).permit(:name)
  end
end
