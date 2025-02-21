class WeightClass < ApplicationRecord
  has_many :wrestlers

  def index
    weight_classes = WeightClass.all
    render json: weight_classes
  end

  def show
    weight_class = WeightClass.find(params[:id])
    render json: weight_class
  end

end
