class EmprendimientosController < ApplicationController
  before_action :set_emprendimiento, only: [:show, :edit, :update, :destroy]

  # GET /emprendimientos
  # GET /emprendimientos.json
  def index
    @emprendimientos = Emprendimiento.all
  end

  # GET /emprendimientos/1
  # GET /emprendimientos/1.json
  def show
  end

  # GET /emprendimientos/new
  def new
    @emprendimiento = Emprendimiento.new
  end

  # GET /emprendimientos/1/edit
  def edit
  end

  # POST /emprendimientos
  # POST /emprendimientos.json
  def create
    @emprendimiento = Emprendimiento.new(emprendimiento_params)

    respond_to do |format|
      if @emprendimiento.save
        format.html { redirect_to @emprendimiento, notice: 'Emprendimiento was successfully created.' }
        format.json { render :show, status: :created, location: @emprendimiento }
      else
        format.html { render :new }
        format.json { render json: @emprendimiento.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /emprendimientos/1
  # PATCH/PUT /emprendimientos/1.json
  def update
    respond_to do |format|
      if @emprendimiento.update(emprendimiento_params)
        format.html { redirect_to @emprendimiento, notice: 'Emprendimiento was successfully updated.' }
        format.json { render :show, status: :ok, location: @emprendimiento }
      else
        format.html { render :edit }
        format.json { render json: @emprendimiento.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /emprendimientos/1
  # DELETE /emprendimientos/1.json
  def destroy
    @emprendimiento.destroy
    respond_to do |format|
      format.html { redirect_to emprendimientos_url, notice: 'Emprendimiento was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_emprendimiento
      @emprendimiento = Emprendimiento.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def emprendimiento_params
      params.require(:emprendimiento).permit(:titulo, :descripcion, :etiquetas, :correo, :pweb, :pface, :ptwitter, :pinstagram, :pbehance, :pyoutube, :plinkedin, :ihoraio, :fhorario, :telefono, :direccion, :lvideo, :portada, :logo, :producto1)
    end
end
