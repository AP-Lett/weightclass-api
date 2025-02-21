class WrestlersController < ApplicationController
  def index
    wrestlers = Wrestler.all
    render json: wrestlers
  end

  def show
    wrestler = Wrestler.find(params[:id])
    render json: wrestler
  end

  def create
    wrestler = Wrestler.create(wc: params[:wc])
    render json: wrestler
  end

  def update
    wrestler = Wrestler.find(params[:id])
    wrestler.update(wc: params[:wc])
    render json: wrestler
  end

  def destroy
    wrestler = Wrestler.find(params[:id])
    wrestler.destroy
    render :no_content
  end
end
