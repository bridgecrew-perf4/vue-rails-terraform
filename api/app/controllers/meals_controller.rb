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
    user = User.find_by(account_id: params[:user_id])
    meals = Meal.preload(:meal_menu).where(user_id: user.id)
    render json: meals, each_serializer: MealSerializer
  end

  # GET meals/:id
  def show
    user = User.find_by(account_id: params[:user_id])
    meal = Meal.find_by(id: params[:id], user_id: user.id)
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
    params.require(:meal).permit(:meal_menu_id, :eat_time, :quantity)
  end

end
