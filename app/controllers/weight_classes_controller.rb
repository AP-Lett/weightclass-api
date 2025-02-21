class WeightClassesController < ApplicationController

  def index #works
    weight_classes = WeightClass.all
    render json: weight_classes
  end

  def show #works
    weight_class = WeightClass.find(params[:id])
    render json: weight_class
  end

  def create #works
    weight_class = WeightClass.create(wc: params[:wc])
    render json: weight_class
  end

  def destroy #works
    weight_class = WeightClass.find(params[:id])
    weight_class.destroy
    render :no_content
  end
  
end
