class TallasController < ApplicationController
  before_action :authenticate_user!, except: [:index]
  before_action :authenticate_role_user, except: [:index]
  #GET /tallas
  def index
    @tallas = Talla.all
  end
  #GET /tallas/:id
  def show
    @talla = Talla.find(params[:id])
  end
  #GET /tallas/new
  def new
    @talla = Talla.new
  end
  def edit
    @talla = Talla.find(params[:id])
  end
  #POST /tallas
  def create
    @talla = Talla.new(talla_params)
    if @talla.save!
    flash[:success] = "Especialidad registrado correctamente"
    redirect_to @talla
    else
      flash[:alert] = "Problemas con la grabación"
      render :new
    end
  end
  #PUT /talla/:id
  def update
    if @talla.has_role? :admin
      @talla = Talla.find(params[:id])
      if @talla.update(talla_params)
        flash[:success]="Talla actualizada"
        redirect_to @talla
      else
        flash[:alert]="Error al actualizar la Talla (Verifique los campos)"
        render :edit
      end
    else
      flash[:alert]="No tiene permisos para acceder a esa vista"
      render :edit
    end
  end
  private
  def talla_params
    params.require(:talla).permit(:nombre)
  end
  def authenticate_role_user
    @user = User.find(current_user.id)
    if @user.has_role? :admin
    else
      flash[:alert]="No tiene permisos para acceder a esa vista"
      redirect_to tallas_path(@talla)
    end
  end
end
