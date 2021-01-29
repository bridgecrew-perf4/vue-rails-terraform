class ExercisesController < ApplicationController
  # POST exercises
  def create
    @exercise = Exercise.new(exercise_params)
    if @exercise.save
      render json: { status: 'success', data: @exercise }
    else
      render json: { status: 'error', data: @exercise.errors }
    end
  end

  # GET exercises/:id
  def index
    @exercises = Exercise.all
    render json: @exercises
  end

  # GET exercises
  def show
    @exercise = Exercise.find(params[:id])
    render json: @exercise
  end

  # PUT exercises/:id
  def update
    @exercise = Exercise.find(params[:id])

    if @exercise.update(exercise_params)
      render json: { status: 'success', data: @exercise }
    else
      render json: { status: 'error', data: @exercise.errors }
    end
  end

  # DELETE exercises/:id
  def destroy
    @exercise = Exercise.find(params[:id])

    if @exercise.destroy
      render json: { status: 'success' }
    else
      render json: @exercise.errors, status: :unprocessable_entity
    end
  end

  private
  def exercise_params
    params.require(:exercise).permit(:calorie, :name, :carbohydrate, :protein, :lipid)
  end

end
