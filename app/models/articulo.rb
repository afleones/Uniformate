class Articulo < ApplicationRecord
    validates :nombre , presence: true, uniqueness: true
    validates :cantidad , presence: true
    validates :valor , presence: true
    validates :codigo, presence: true

    belongs_to :categoria
    #belongs_to :especialidad
    #belongs_to :talla
    mount_uploader :imagen, ImagenUploader
end
