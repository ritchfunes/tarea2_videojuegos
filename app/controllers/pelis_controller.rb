class PelisController < ApplicationController
  before_action :set_peli, only: [:show, :edit, :update, :destroy]

  # GET /pelis
  # GET /pelis.json
  def index
    @pelis = Peli.all
  end

  # GET /pelis/1
  # GET /pelis/1.json
  def show
  end

  # GET /pelis/new
  def new
    @peli = Peli.new
  end

  # GET /pelis/1/edit
  def edit
  end

  # POST /pelis
  # POST /pelis.json
  def create
    @peli = Peli.new(peli_params)

    respond_to do |format|
      if @peli.save
        format.html { redirect_to @peli, notice: 'Peli was successfully created.' }
        format.json { render :show, status: :created, location: @peli }
      else
        format.html { render :new }
        format.json { render json: @peli.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /pelis/1
  # PATCH/PUT /pelis/1.json
  def update
    respond_to do |format|
      if @peli.update(peli_params)
        format.html { redirect_to @peli, notice: 'Peli was successfully updated.' }
        format.json { render :show, status: :ok, location: @peli }
      else
        format.html { render :edit }
        format.json { render json: @peli.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pelis/1
  # DELETE /pelis/1.json
  def destroy
    @peli.destroy
    respond_to do |format|
      format.html { redirect_to pelis_url, notice: 'Peli was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_peli
      @peli = Peli.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def peli_params
      params.require(:peli).permit(:Peliculas)
    end
end
