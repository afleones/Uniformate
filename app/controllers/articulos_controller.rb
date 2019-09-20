class ArticulosController < ApplicationController

  before_action :authenticate_user!, except: [:index]
  before_action :authenticate_role_user, except: [:index]

  respond_to :html

  #GET /articulos
  def index
    @articulos = Articulo.all
  end
  #GET /articlos/:id
  def show
    @articulo = Articulo.find(params[:id])
  end
  #GET /articulos/new
  def new
    @articulo = Articulo.new
  end
  def edit
    @articulo = Articulo.find(params[:id])
  end
  #POST /articulos
  def create
        @articulo = Articulo.new(articulo_params)
    if @articulo.save!
      flash[:success] = "Articulo registrado correctamente"
      respond_with @articulo
    else
      flash[:alert] = "Problemas con la grabación"
      render :new
    end
  end
  #PUT /articulos/:id
  def update
    if @user.has_role? :admin
      @articulo = Articulo.find_by id: params[:id]
      if @articulo.update(articulo_params)
        flash[:success]="Articulo actualizado"
        respond_with @articulo
      else
          flash[:alert]="Error al actualizar el Articulo (Verifique los campos)"
        render :edit
      end
    else
      flash[:alert]="No tiene permisos para acceder a esa vista"
      render :edit
    end
  end
  #DELETE /articulos/:id
  def destroy
    @articulo = Articulo.find(params[:id]).destroy
    flash[:success] = "Articulo Eliminado"
    redirect_to articulos_path
  end

  private
  def articulo_params
    params.require(:articulo).permit(:nombre,:estado , :cantidad,:valor,:codigo,:categoria_id,:imagen)
  end

  def authenticate_role_user
    @user = User.find(current_user.id)
    if @user.has_role? :admin
    else
      flash[:alert]="No tiene permisos para acceder a esa vista"
      redirect_to articulos_path(@articulo)
    end
  end
end
