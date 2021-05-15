class GelatisController < ApplicationController
  before_action :authenticate_user!
  before_action :set_gelati, only: %i[ show edit update destroy ]

  # GET /gelatis or /gelatis.json
  def index
    @gelatis = Gelati.all
  end

  # GET /gelatis/1 or /gelatis/1.json
  def show
  end

  # GET /gelatis/new
  def new
    @gelati = Gelati.new
  end

  # GET /gelatis/1/edit
  def edit
  end

  # POST /gelatis or /gelatis.json
  def create
    @gelati = Gelati.new(gelati_params)

    respond_to do |format|
      if @gelati.save
        format.html { redirect_to @gelati, notice: "Gelati was successfully created." }
        format.json { render :show, status: :created, location: @gelati }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @gelati.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /gelatis/1 or /gelatis/1.json
  def update
    respond_to do |format|
      if @gelati.update(gelati_params)
        format.html { redirect_to @gelati, notice: "Gelati was successfully updated." }
        format.json { render :show, status: :ok, location: @gelati }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @gelati.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /gelatis/1 or /gelatis/1.json
  def destroy
    @gelati.destroy
    respond_to do |format|
      format.html { redirect_to gelatis_url, notice: "Gelati was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_gelati
      @gelati = Gelati.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def gelati_params
      params.require(:gelati).permit(:nome, :ingredienti, :calorie, :cover)
    end
end
