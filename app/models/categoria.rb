class Categoria < ApplicationRecord
  validates :nombre , presence: true, uniqueness: true
  has_many :articulos
  mount_uploader :foto, AvatarUploader
end
