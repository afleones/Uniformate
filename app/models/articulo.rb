class Articulo < ApplicationRecord
    validates :nombre , presence: true, uniqueness: true
    validates :cantidad , presence: true
    validates :valor , presence: true
end
