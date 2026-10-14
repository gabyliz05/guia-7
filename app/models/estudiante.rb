class Estudiante < ApplicationRecord
  validates :nombres, :apellidos, :carrera, :carnet, presence: true
end
