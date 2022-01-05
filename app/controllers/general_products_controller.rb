class GeneralProductsController < ApplicationController
  before_action :set_general_product, only: %i[ show edit update destroy ]
  before_action :authenticate_user!, except: [:index, :show]
  before_action :correct_user, only: [:edit, :update, :destroy]

  # GET /general_products or /general_products.json
  def index
    @general_products = GeneralProduct.all
  end

  # GET /general_products/1 or /general_products/1.json
  def show
  end

  # GET /general_products/new
  def new
    @general_product = GeneralProduct.new
  end

  # GET /general_products/1/edit
  def edit
  end

  # POST /general_products or /general_products.json
  def create
    @general_product = GeneralProduct.new(general_product_params)

    respond_to do |format|
      if @general_product.save
        format.html { redirect_to @general_product, notice: "General product was successfully created." }
        format.json { render :show, status: :created, location: @general_product }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @general_product.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /general_products/1 or /general_products/1.json
  def update
    respond_to do |format|
      if @general_product.update(general_product_params)
        format.html { redirect_to @general_product, notice: "General product was successfully updated." }
        format.json { render :show, status: :ok, location: @general_product }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @general_product.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /general_products/1 or /general_products/1.json
  def destroy
    @general_product.destroy
    respond_to do |format|
      format.html { redirect_to general_products_url, notice: "General product was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_general_product
      @general_product = GeneralProduct.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def general_product_params
      params.require(:general_product).permit(:name, :price, :description)
    end
end
