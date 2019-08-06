class User < ApplicationRecord

  devise :database_authenticatable, :registerable,
           :recoverable, :rememberable, :validatable

  mount_uploader :perfil, AvatarUploader
end
