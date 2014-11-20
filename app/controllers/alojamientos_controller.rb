class AlojamientosController < ApplicationController
  before_action :set_alojamiento, only: [:show, :edit, :update, :destroy]

  # GET /alojamientos
  # GET /alojamientos.json
  def index
    @alojamientos = Alojamiento.all
  end

  # GET /alojamientos/1
  # GET /alojamientos/1.json
  def show
  end

  # GET /alojamientos/new
  def new
    @alojamiento = Alojamiento.new
  end

  # GET /alojamientos/1/edit
  def edit
  end

  # POST /alojamientos
  # POST /alojamientos.json
  def create
    @alojamiento = Alojamiento.new(alojamiento_params)

    respond_to do |format|
      if @alojamiento.save
        format.html { redirect_to @alojamiento, notice: 'Alojamiento was successfully created.' }
        format.json { render :show, status: :created, location: @alojamiento }
      else
        format.html { render :new }
        format.json { render json: @alojamiento.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /alojamientos/1
  # PATCH/PUT /alojamientos/1.json
  def update
    respond_to do |format|
      if @alojamiento.update(alojamiento_params)
        format.html { redirect_to @alojamiento, notice: 'Alojamiento was successfully updated.' }
        format.json { render :show, status: :ok, location: @alojamiento }
      else
        format.html { render :edit }
        format.json { render json: @alojamiento.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /alojamientos/1
  # DELETE /alojamientos/1.json
  def destroy
    @alojamiento.destroy
    respond_to do |format|
      format.html { redirect_to alojamientos_url, notice: 'Alojamiento was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_alojamiento
      @alojamiento = Alojamiento.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def alojamiento_params
      params.require(:alojamiento).permit(:id_aloja, :nombre, :sitio, :coreo, :telefono)
    end
end
