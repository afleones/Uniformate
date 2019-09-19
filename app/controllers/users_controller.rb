class UsersController < ApplicationController

  before_action :authenticate_user!
  before_action :tipo_documento

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

  private
  def user_params
    params.require(:user).permit(:nombre, :apellido, :email, :tipo_documento, :documento, :password, :telefono, :perfil)
  end

  def tipo_documento
      @tipo = TipoDocumento.all
  end

end
