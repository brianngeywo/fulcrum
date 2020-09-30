class FurnitureCategoriesController < ApplicationController
  before_action :set_furniture_category, only: [:show]

  # GET /furniture_categories
  # GET /furniture_categories.json
  def index
    @furniture_categories = FurnitureCategory.all
  end

  # GET /furniture_categories/1
  # GET /furniture_categories/1.json
  def show
  end

  
  private
    # Use callbacks to share common setup or constraints between actions.
    def set_furniture_category
      @furniture_category = FurnitureCategory.find(params[:id])
    end
end
