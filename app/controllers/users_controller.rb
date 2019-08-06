class UsersController < ApplicationController

  before_action :authenticate_user!

  def edit
  @user = User.find(params[:id])
  end

  def show
  @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    if @user.update(user_params)
      flash[:success]="Registro Actualizado"
      redirect_to edit_user_path(@user)
    else
      flash[:alert]="Error al Actualizar"
      render :edit
    end
  end

  def destroy
    salir
    redirect_to root_home_index
  end

  private
  def user_params
    params.require(:user).permit(:nombre, :email, :telefono, :password, :perfil)
  end

end
