class Talla < ApplicationRecord
  validates :nombre , presence: true, uniqueness: true
end
