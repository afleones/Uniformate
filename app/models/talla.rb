class Talla < ApplicationRecord
  validates :nombre , presence: true, uniqueness: true
  #has_many :articulos
end
