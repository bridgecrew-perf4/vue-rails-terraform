class MealsController < ApplicationController
  # POST meals
  def create
    meal = Meal.new(meal_params)
    if meal.save
      render json: { status: 'success', data: meal }
    else
      render json: { status: 'error', data: meal.errors }
    end
  end

  # GET meals
  def index
    meals = Meal.preload(:meal_menu)
    render json: meals, each_serializer: MealSerializer
  end

  # GET meals/:id
  def show
    meal = Meal.find(params[:id])
    render json: meal
  end

  # PUT meals/:id
  def update
    meal = Meal.find(params[:id])

    if meal.update(meal_params)
      render json: { status: 'success', data: meal }
    else
      render json: { status: 'error', data: meal.errors }
    end
  end

  # DELETE meals/:id
  def destroy
    meal = Meal.find(params[:id])

    if meal.destroy
      render json: { status: 'success' }
    else
      render json: meal.errors, status: :unprocessable_entity
    end
  end

  private
  def meal_params
    params.require(:meal).permit(:meal_menu_id, :meal_time, :quantity)
  end

end
