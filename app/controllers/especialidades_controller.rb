class EspecialidadesController < ApplicationController
  #GET /especialidades
  def index
    @especialidades = Especialidad.all
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
    if @especialidad.save
    redirect_to @especialidad
    else
      render :new
    end
  end
  #PUT /especialidad/:id
  def update
      @especialidad = Especialidad.find_by id: params[:id]
      if @especialidad.update(especialidad_params)
        redirect_to @especialidad
      else
        render :edit
      end
  end

  private
  def especialidad_params
    params.require(:especialidad).permit(:nombre)
  end
end
