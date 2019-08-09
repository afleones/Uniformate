class CategoriasController < ApplicationController
  #GET /Categoria
  def index
    @categorias = Categoria.all
  end

  #GET /articlos/:id
  def show
    @categoria = Categoria.find(params[:id])
  end
  #GET /articulos/new
  def new
    @categoria = Categoria.new
  end

  def edit
    @categoria = Categoria.find(params[:id])
  end
  #PUT /articulos
  def create
    @categoria = Categoria.new(categoria_params)
    if @categoria.save
    redirect_to @categorias
    else
      render :new
    end
  end
  #PUT /articulos/:id
  def update
      @categoria = Categoria.find(params[:id])
      if @categoria.update(articulo_params)
        redirect_to @categoria
      else
        render :edit
      end
  end

  private
  def categoria_params
    params.require(:categoria).permit(:nombre)
  end
end
