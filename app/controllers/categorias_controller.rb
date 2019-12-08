class CategoriasController < ApplicationController

  before_action :authenticate_user!, except: [:index]
  before_action :authenticate_role_user, except: [:index]

  respond_to :html
  #GET /categorias
  def index
    @categorias = Categoria.all
    if params[:q].present?
      @categorias = @categorias.where("nombre ilike :q", q: "%#{params[:q]}%")
    end
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
    if @categoria.save!
      flash[:success] = "Categoria registrada correctamente"
      respond_with @categoria
    else
      flash[:alert] = "Problemas con la grabación"
      render :new
    end
  end
  #PUT /categorias/:id
  def update
    if @user.has_role? :admin
      @categoria = Categoria.find_by id: params[:id]
      if @categoria.update(categoria_params)
        flash[:success]="Categoria actualizada"
        respond_with @categoria
      else
        flash[:alert]="Error al actualizar"
        render :edit
      end
    else
      flash[:alert]="No tiene permisos para acceder a esa vista"
      render :edit
    end
  end

  private
  def categoria_params
    params.require(:categoria).permit(:nombre, :foto)
  end

  def authenticate_role_user
    @user = User.find(current_user.id)
    if @user.has_role? :admin
    else
      flash[:alert]="No tiene permisos para acceder a esa vista"
      redirect_to categorias_path(@categoria)
    end
  end
end
