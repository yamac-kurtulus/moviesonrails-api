class AuthController < ApplicationController
  # POST auth/login
  def login
    user = User.find_by(email: login_params[:email].downcase)
    if user && user.authenticate(login_params[:password])

      render json: { token: token(user.id), user_id: user.id }, status: :created
    else
      render json: { errors: ["Sorry, incorrect username or password"] }, status: :unauthorized
    end
  end

  # POST auth/register
  def register
    @user = User.new(register_params)
    if @user.save
      render json: { message: 'Registration complete, you can now login to use the system' }, status: :created
    else
      render @user.errors, status: :unprocessable_entity
    end
  end

  private

  def login_params
    params.require(:user).permit(:email, :password)
  end

  def register_params
    params.require(:user).permit(:email, :password, :name)
  end
end
