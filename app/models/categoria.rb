class Categoria < ApplicationRecord
  validates :nombre , presence: true, uniqueness: true
end
