class CategoriasController < ApplicationController
  #GET /categorias
  def index
    @categorias = Categoria.all
  end
  #GET /categorias/:id
  def show
    @categoria = Categoria.find(params[:id])
  end
  #GET /categorias/new
  def new
    @categoria = Categoria.new
  end
  def edit
    @categoria = Categoria.find(params[:id])
  end
  #POST /categorias
  def create
    @categoria = Categoria.new(categoria_params)
    if @categoria.save
    redirect_to @categoria
    else
      render :new
    end
  end
  #PUT /categorias/:id
  def update
      @categoria = Categoria.find_by id: params[:id]
      if @categoria.update(categoria_params)
        redirect_to action: :categoria
      else
        render :edit
      end
  end

  private
  def categoria_params
    params.require(:categoria).permit(:nombre)
  end
end
