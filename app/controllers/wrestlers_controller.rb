class WrestlersController < ApplicationController
  before_action :authorize_request
  
  def index #works
    wrestlers = Wrestler.all
    render json: wrestlers
  end

  def show #works
    wrestler = Wrestler.find(params[:id])
    render json: wrestler
  end

  def create #works
    wrestler = Wrestler.create!(name: params[:name], age: params[:age], gender: params[:gender], weight_class_id: params[:weight_class_id])
    render json: wrestler
  end

  def update #works
    wrestler = Wrestler.find(params[:id])
    wrestler.update(name: params[:name] || wrestler.name, age: params[:age] || wrestler.age, gender: params[:gender]|| wrestler.gender, weight_class_id: params[:weight_class_id] || wrestler.weight_class_id)
    render json: wrestler
  end

  def destroy #works
    wrestler = Wrestler.find(params[:id])
    wrestler.destroy
    render :no_content
  end
end
