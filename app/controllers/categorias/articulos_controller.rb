class Categorias::ArticulosController < ApplicationController
  before_action :inicial
    #GET /articulos
  def index
    @articulos = @categoria.articulos.page params[:page]
    if params[:q].present?
      @articulos = @categoria.articulos.where("nombre ilike :q or codigo::varchar(255) ilike :q", q: "%#{params[:q]}%").page params[:page]
    end
  end
  private
  def inicial
    @categoria = Categoria.find(params[:categoria_id])
  end
end
