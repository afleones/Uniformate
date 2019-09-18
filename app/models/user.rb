class User < ApplicationRecord
  rolify

  devise :database_authenticatable, :registerable,
           :recoverable, :rememberable, :validatable

  belongs_to :tipo_documento

  #validate :documento, uniqueness: true

  #validate :documento, numericality: true

  mount_uploader :perfil, PerfilUploader
end
