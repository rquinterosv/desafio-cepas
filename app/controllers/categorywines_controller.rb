class CategorywinesController < ApplicationController
  before_action :set_categorywine, only: %i[ show edit update destroy ]

  # GET /categorywines or /categorywines.json
  def index
    @categorywines = Categorywine.all
  end

  # GET /categorywines/1 or /categorywines/1.json
  def show
  end

  # GET /categorywines/new
  def new
    @categorywine = Categorywine.new
  end

  # GET /categorywines/1/edit
  def edit
  end

  # POST /categorywines or /categorywines.json
  def create
    @categorywine = Categorywine.new(categorywine_params)

    respond_to do |format|
      if @categorywine.save
        format.html { redirect_to categorywine_url(@categorywine), notice: "Categorywine was successfully created." }
        format.json { render :show, status: :created, location: @categorywine }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @categorywine.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /categorywines/1 or /categorywines/1.json
  def update
    respond_to do |format|
      if @categorywine.update(categorywine_params)
        format.html { redirect_to categorywine_url(@categorywine), notice: "Categorywine was successfully updated." }
        format.json { render :show, status: :ok, location: @categorywine }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @categorywine.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /categorywines/1 or /categorywines/1.json
  def destroy
    @categorywine.destroy

    respond_to do |format|
      format.html { redirect_to categorywines_url, notice: "Categorywine was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_categorywine
      @categorywine = Categorywine.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def categorywine_params
      params.require(:categorywine).permit(:category_id, :wine_id)
    end
end
