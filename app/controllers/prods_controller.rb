class ProdsController < ApplicationController
  before_action :set_prod, only: %i[ show edit update destroy ]

  # GET /prods or /prods.json
  def index
    @prods = Prod.all
  end

  # GET /prods/1 or /prods/1.json
  def show
  end

  # GET /prods/new
  def new
    @prod = Prod.new
  end

  # GET /prods/1/edit
  def edit
  end

  # POST /prods or /prods.json
  def create
    @prod = Prod.new(prod_params)

    respond_to do |format|
      if @prod.save
        format.html { redirect_to @prod, notice: "Prod was successfully created." }
        format.json { render :show, status: :created, location: @prod }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @prod.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /prods/1 or /prods/1.json
  def update
    respond_to do |format|
      if @prod.update(prod_params)
        format.html { redirect_to @prod, notice: "Prod was successfully updated." }
        format.json { render :show, status: :ok, location: @prod }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @prod.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /prods/1 or /prods/1.json
  def destroy
    @prod.destroy
    respond_to do |format|
      format.html { redirect_to prods_url, notice: "Prod was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_prod
      @prod = Prod.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def prod_params
      params.require(:prod).permit(:name, :description, :image_url, :delivery)
    end
end
