class TownDetailsController < ApplicationController
  before_action :set_town_detail, only: %i[ show edit update destroy ]

  # GET /town_details or /town_details.json
  def index
    @town_details = TownDetail.all
  end

  # GET /town_details/1 or /town_details/1.json
  def show
  end

  # GET /town_details/new
  def new
    @town_detail = TownDetail.new
  end

  # GET /town_details/1/edit
  def edit
  end

  # POST /town_details or /town_details.json
  def create
    @town_detail = TownDetail.new(town_detail_params)

    respond_to do |format|
      if @town_detail.save
        format.html { redirect_to town_detail_url(@town_detail), notice: "Town detail was successfully created." }
        format.json { render :show, status: :created, location: @town_detail }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @town_detail.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /town_details/1 or /town_details/1.json
  def update
    respond_to do |format|
      if @town_detail.update(town_detail_params)
        format.html { redirect_to town_detail_url(@town_detail), notice: "Town detail was successfully updated." }
        format.json { render :show, status: :ok, location: @town_detail }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @town_detail.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /town_details/1 or /town_details/1.json
  def destroy
    @town_detail.destroy

    respond_to do |format|
      format.html { redirect_to town_details_url, notice: "Town detail was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_town_detail
      @town_detail = TownDetail.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def town_detail_params
      params.require(:town_detail).permit(:town_id, :size, :population)
    end
end
