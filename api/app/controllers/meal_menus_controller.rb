class MealMenusController < ApplicationController
  # POST meal_menus
  def create
    meal_menu = MealMenu.new(meal_menu_params)
    if meal_menu.save
      render json: { status: 'success', data: meal_menu }
    else
      render json: { status: 'error', data: meal_menu.errors }
    end
  end

  # GET meal_menus
  def index
    meal_menus = MealMenu.all
    
    render json: meal_menus
  end

  # GET meal_menus/:id
  def show
    meal_menu = MealMenu.find(params[:id])
    
    render json: meal_menu
  end

  # PUT meal_menus/:id
  def update
    meal_menu = MealMenu.find(params[:id])

    if meal_menu.update(meal_menu_params)
      render json: { status: 'success', data: meal_menu }
    else
      render json: { status: 'error', data: meal_menu.errors }
    end
  end

  # DELETE meal_menus/:id
  def destroy
    meal_menu = MealMenu.find(params[:id])

    if meal_menu.destroy
      render json: { status: 'success' }
    else
      render json: meal_menu.errors, status: :unprocessable_entity
    end
  end

  private
  def meal_menu_params
    params.require(:meal_menu).permit(:name, :calorie, :carbohydrate, :protein, :lipid)
  end

end
