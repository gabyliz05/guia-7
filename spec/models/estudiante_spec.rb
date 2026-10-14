require 'rails_helper'

RSpec.describe Estudiante, type: :model do
  it { should validate_presence_of(:nombres) }
  it { should validate_presence_of(:apellidos) }
  it { should validate_presence_of(:carrera) }
  it { should validate_presence_of(:carnet) }
end
