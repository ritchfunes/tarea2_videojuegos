class MundosController < ApplicationController
  before_action :set_mundo, only: [:show, :edit, :update, :destroy]

  # GET /mundos
  # GET /mundos.json
  def index
    @mundos = Mundo.all
  end

  # GET /mundos/1
  # GET /mundos/1.json
  def show
  end

  # GET /mundos/new
  def new
    @mundo = Mundo.new
  end

  # GET /mundos/1/edit
  def edit
  end

  # POST /mundos
  # POST /mundos.json
  def create
    @mundo = Mundo.new(mundo_params)

    respond_to do |format|
      if @mundo.save
        format.html { redirect_to @mundo, notice: 'Mundo was successfully created.' }
        format.json { render :show, status: :created, location: @mundo }
      else
        format.html { render :new }
        format.json { render json: @mundo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /mundos/1
  # PATCH/PUT /mundos/1.json
  def update
    respond_to do |format|
      if @mundo.update(mundo_params)
        format.html { redirect_to @mundo, notice: 'Mundo was successfully updated.' }
        format.json { render :show, status: :ok, location: @mundo }
      else
        format.html { render :edit }
        format.json { render json: @mundo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /mundos/1
  # DELETE /mundos/1.json
  def destroy
    @mundo.destroy
    respond_to do |format|
      format.html { redirect_to mundos_url, notice: 'Mundo was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_mundo
      @mundo = Mundo.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def mundo_params
      params.require(:mundo).permit(:pelicula, :series, :videojuegos)
    end
end
