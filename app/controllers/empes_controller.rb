class EmpesController < ApplicationController
  before_action :set_empe, only: [:show, :edit, :update, :destroy]

  # GET /empes
  # GET /empes.json
  def index
    @empes = Empe.all
  end

  # GET /empes/1
  # GET /empes/1.json
  def show
  end

  # GET /empes/new
  def new
    @empe = Empe.new
  end

  # GET /empes/1/edit
  def edit
  end

  # POST /empes
  # POST /empes.json
  def create
    @empe = Empe.new(empe_params)

    respond_to do |format|
      if @empe.save
        format.html { redirect_to @empe, notice: 'Empe was successfully created.' }
        format.json { render :show, status: :created, location: @empe }
      else
        format.html { render :new }
        format.json { render json: @empe.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /empes/1
  # PATCH/PUT /empes/1.json
  def update
    respond_to do |format|
      if @empe.update(empe_params)
        format.html { redirect_to @empe, notice: 'Empe was successfully updated.' }
        format.json { render :show, status: :ok, location: @empe }
      else
        format.html { render :edit }
        format.json { render json: @empe.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /empes/1
  # DELETE /empes/1.json
  def destroy
    @empe.destroy
    respond_to do |format|
      format.html { redirect_to empes_url, notice: 'Empe was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_empe
      @empe = Empe.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def empe_params
      params.require(:empe).permit(:e_id, :name, :exp, :join_date, :status)
    end
end
