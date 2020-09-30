module Dashboard
  class FurnitureCategoriesController < ApplicationController
    before_action :authenticate_user!, except: [:show]
    before_action :set_furniture_category, only: [:show, :edit, :update, :destroy]

    # GET /furniture_categories
    # GET /furniture_categories.json
    def index
      @furniture_categories = FurnitureCategory.all
    end

    # GET /furniture_categories/1
    # GET /furniture_categories/1.json
    def show
    end

    # GET /furniture_categories/new
    def new
      @furniture_category = FurnitureCategory.new
    end

    # GET /furniture_categories/1/edit
    def edit
    end

    # POST /furniture_categories
    # POST /furniture_categories.json
    def create
      @furniture_category = FurnitureCategory.new(furniture_category_params)

      respond_to do |format|
        if @furniture_category.save
          format.html { redirect_to @furniture_category, notice: 'Furniture category was successfully created.' }
          format.json { render :show, status: :created, location: @furniture_category }
        else
          format.html { render :new }
          format.json { render json: @furniture_category.errors, status: :unprocessable_entity }
        end
      end
    end

    # PATCH/PUT /furniture_categories/1
    # PATCH/PUT /furniture_categories/1.json
    def update
      respond_to do |format|
        if @furniture_category.update(furniture_category_params)
          format.html { redirect_to @furniture_category, notice: 'Furniture category was successfully updated.' }
          format.json { render :show, status: :ok, location: @furniture_category }
        else
          format.html { render :edit }
          format.json { render json: @furniture_category.errors, status: :unprocessable_entity }
        end
      end
    end

    # DELETE /furniture_categories/1
    # DELETE /furniture_categories/1.json
    def destroy
      @furniture_category.destroy
      respond_to do |format|
        format.html { redirect_to furniture_categories_url, notice: 'Furniture category was successfully destroyed.' }
        format.json { head :no_content }
      end
    end

    private
      # Use callbacks to share common setup or constraints between actions.
      def set_furniture_category
        @furniture_category = FurnitureCategory.find(params[:id])
      end

      # Only allow a list of trusted parameters through.
      def furniture_category_params
        params.require(:furniture_category).permit(:name)
      end
  end
end