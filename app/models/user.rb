class User < ApplicationRecord

  devise :database_authenticatable, :registerable,
           :recoverable, :rememberable, :validatable

  mount_uploader :perfil, AvatarUploader

  belongs_to :tipo_documento


  #validate :documento, uniqueness: true

  #validate :documento, numericality: true
end
