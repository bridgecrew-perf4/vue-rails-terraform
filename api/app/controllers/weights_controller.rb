class WeightsController < ApplicationController
  # POST weights
  def create
    weight = Weight.new(weight_params)
    if weight.save
      render json: { status: 'success', data: weight }
    else
      render json: { status: 'error', data: weight.errors }
    end
  end

  # GET weights
  def index
    weights = Weight.all
    render json: weights
  end

  # GET weights/:id
  def show
    weight = Weight.find(params[:id])
    render json: weight
  end

  # PUT weights/:id
  def update
    weight = Weight.find(params[:id])

    if weight.update(weight_params)
      render json: { status: 'success', data: weight }
    else
      render json: { status: 'error', data: weight.errors }
    end
  end

  # DELETE weights/:id
  def destroy
    weight = Weight.find(params[:id])

    if weight.destroy
      render json: { status: 'success' }
    else
      render json: weight.errors, status: :unprocessable_entity
    end
  end

  private
  def weight_params
    params.require(:weight).permit(:value, :body_fat, :measurement_time)
  end

end
