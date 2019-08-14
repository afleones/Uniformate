class TallasController < ApplicationController
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
    if @talla.save
    redirect_to @talla
    else
      render :new
    end
  end
  #PUT /talla/:id
  def update
      @talla = Talla.find(params[:id])
      if @talla.update(talla_params)
        redirect_to @talla
      else
        render :edit
      end
  end
  private
  def talla_params
    params.require(:talla).permit(:nombre)
  end
end
