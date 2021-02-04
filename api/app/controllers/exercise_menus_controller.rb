class ExerciseMenusController < ApplicationController
  # POST exercise_menus
  def create
    exercise_menu = ExerciseMenu.new(exercise_menu_params)
    if exercise_menu.save
      render json: { status: 'success', data: exercise_menu }
    else
      render json: { status: 'error', data: exercise_menu.errors }
    end
  end

  # GET exercise_menus
  def index
    user = User.find_by(account_id: params[:user_id])
    exercise_menus = ExerciseMenu.all.where(user_id: user.id)
    render json: exercise_menus, each_serializer: ExerciseMenuSerializer
  end

  # GET exercise_menus/:id
  def show
    exercise_menu = ExerciseMenu.find(params[:id])
    render json: exercise_menu, each_serializer: ExerciseMenuSerializer
  end

  # PUT exercise_menus/:id
  def update
    exercise_menu = ExerciseMenu.find(params[:id])

    if exercise_menu.update(exercise_menu_params)
      render json: { status: 'success', data: exercise_menu }
    else
      render json: { status: 'error', data: exercise_menu.errors }
    end
  end

  # DELETE exercise_menus/:id
  def destroy
    exercise_menu = ExerciseMenu.find(params[:id])

    if exercise_menu.destroy
      render json: { status: 'success' }
    else
      render json: exercise_menu.errors, status: :unprocessable_entity
    end
  end

  private
  def exercise_menu_params
    params.require(:exercise_menu).permit(:name, :calorie)
  end

end
