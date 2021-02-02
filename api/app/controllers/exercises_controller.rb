class ExercisesController < ApplicationController
  # POST exercises
  def create
    exercise = Exercise.new(exercise_params)
    if exercise.save
      render json: { status: 'success', data: exercise }
    else
      render json: { status: 'error', data: exercise.errors }
    end
  end

  # GET exercises
  def index
    user = User.find_by(account_id: params[:user_id])
    exercises = Exercise.preload(:exercise_menu).where(user_id: user.id)
    render json: exercises, each_serializer: ExerciseSerializer
  end

  # GET exercises/:id
  def show
    user = User.find_by(account_id: params[:user_id])
    exercise = Exercise.where(id: params[:id], user_id: user.id)
    render json: exercise, each_serializer: ExerciseSerializer
  end

  # PUT exercises/:id
  def update
    exercise = Exercise.find(params[:id])

    if exercise.update(exercise_params)
      render json: { status: 'success', data: exercise }
    else
      render json: { status: 'error', data: exercise.errors }
    end
  end

  # DELETE exercises/:id
  def destroy
    exercise = Exercise.find(params[:id])

    if exercise.destroy
      render json: { status: 'success' }
    else
      render json: exercise.errors, status: :unprocessable_entity
    end
  end

  private
  def exercise_params
    params.require(:exercise).permit(:exercise_menu_id, :number, :set, :time, :distance, :exercise_time)
  end

end
