class EspecialidadesController < ApplicationController
  before_action :authenticate_user!, except: [:index]
  before_action :authenticate_role_user, except: [:index]

  #GET /especialidades
  def index
    @especialidades = Especialidad.all
    if params[:q].present?
      @especialidades = @especialidades.where("nombre ilike :q", q: "%#{params[:q]}%")
    end
  end
  #GET /especialidad/:id
  def show
    @especialidad = Especialidad.find(params[:id])
  end
  #GET /especialidad/new
  def new
    @especialidad = Especialidad.new
  end
  def edit
    @especialidad = Especialidad.find(params[:id])
  end
  #POST /especialidad
  def create
    @especialidad = Especialidad.new(especialidad_params)
    if @especialidad.save!
      flash[:success] = "Especialidad registrado correctamente"
      redirect_to @especialidad
    else
      flash[:alert] = "Problemas con la grabación"
      render :new
    end
  end
  #PUT /especialidad/:id
  def update
    if current_user.has_role? :admin
      @especialidad = Especialidad.find_by id: params[:id]
      if @especialidad.update(especialidad_params)
        flash[:success]="Articulo actualizado"
        redirect_to @especialidad
      else
        flash[:alert]="Error al actualizar la Especialidad (Verifique los campos)"
        render :edit
      end
    else
      flash[:alert]="No tiene permisos para acceder a esa vista"
      render :edit
    end
  end

  private
  def especialidad_params
    params.require(:especialidad).permit(:nombre)
  end

  def authenticate_role_user
    @user = User.find(current_user.id)
    if @user.has_role? :admin
    else
      flash[:alert]="No tiene permisos para acceder a esa vista"
      redirect_to especialidades_path(@especialidad)
    end
  end
end
