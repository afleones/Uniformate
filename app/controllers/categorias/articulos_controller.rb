class Categorias::ArticulosController < ApplicationController
  before_action :inicial
    #GET /articulos
  def index
    @articulos = @categoria.articulos
  end
  private
  def inicial
    @categoria = Categoria.find(params[:categoria_id])
  end

end
