module ArticuloHelper

  def mostrar_nose(f)
    if params[:action] == 'edit'
      f.input :estado, as: :radio_buttons, collection: [['Activo',true],['Inactivo', false]]
    else
      nil
    end
  end
end
