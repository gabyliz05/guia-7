class EstudiantesController < ApplicationController
  before_action :set_estudiante, only: %i[ show edit update destroy ]

  # GET /estudiantes
  def index
    @estudiantes = Estudiante.all
  end

  # GET /estudiantes/1
  def show
  end

  # GET /estudiantes/new
  def new
    @estudiante = Estudiante.new
  end

  # GET /estudiantes/1/edit
  def edit
  end

  # POST /estudiantes
  def create
    @estudiante = Estudiante.new(estudiante_params)

    if @estudiante.save
      redirect_to @estudiante, notice: "Estudiante was successfully created."
    else
      render :new, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /estudiantes/1
  def update
    if @estudiante.update(estudiante_params)
      redirect_to @estudiante, notice: "Estudiante was successfully updated.", status: :see_other
    else
      render :edit, status: :unprocessable_entity
    end
  end

  # DELETE /estudiantes/1
  def destroy
    @estudiante.destroy!
    redirect_to estudiantes_url, notice: "Estudiante was successfully destroyed.", status: :see_other
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_estudiante
      @estudiante = Estudiante.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def estudiante_params
      params.require(:estudiante).permit(:nombres, :apellidos, :carrera, :carnet)
    end
end
