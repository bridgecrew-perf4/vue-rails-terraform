class UsersController < ApplicationController
  # POST users
  def create
    user = User.new(user_params)
    if user.save
      render json: { status: 'success', data: user }
    else
      render json: { status: 'error', data: user.errors }
    end
  end

  # GET users/:id
  def show
    user = User.find(params[:id])
    render json: user
  end

  # PUT users/:id
  def update
    user = User.find(params[:id])

    if user.update(user_params)
      render json: { status: 'success', data: user }
    else
      render json: { status: 'error', data: user.errors }
    end
  end

  # DELETE users/:id
  def destroy
    user = User.find(params[:id])

    if user.destroy
      render json: { status: 'success' }
    else
      render json: user.errors, status: :unprocessable_entity
    end
  end

  private
  def user_params
    params.require(:user).permit(:name, :email, :age)
  end

end
