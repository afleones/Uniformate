class CategoriasController < ApplicationController
  respond_to :html
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
      flash[:success] = "Categoria registrada correctamente"
      respond_with @categoria
    else
      flash[:alert] = "Problemas con la grabación"
      render :new
    end
  end
  #PUT /categorias/:id
  def update
      @categoria = Categoria.find_by id: params[:id]
      if @categoria.update(categoria_params)
        flash[:success]="Categoria actualizada"
        redirect_to action: :categoria
      else
        flash[:alert]="Error al actualizar la categoria (Verifique los campos)"
        render :edit
      end
  end

  private
  def categoria_params
    params.require(:categoria).permit(:nombre, :categoria)
  end
end
