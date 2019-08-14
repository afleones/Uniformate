class ArticulosController < ApplicationController

  before_action :authenticate_user!

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
    if @articulo.save
    redirect_to @articulo
    else
      render :new
    end
  end
  #PUT /articulos/:id
  def update
      @articulo = Articulo.find(params[:id])
      if @articulo.update(articulo_params)
        redirect_to @articulo
      else
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
    params.require(:articulo).permit(:nombre,:cantidad,:valor,:codigo,:categoria_id)
  end
end
