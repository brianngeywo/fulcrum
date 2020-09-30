class FurnituresController < ApplicationController
  before_action :set_furniture, only: [:show]

  # GET /furnitures
  # GET /furnitures.json
  def index
    @furnitures = Furniture.all
  end

  # GET /furnitures/1
  # GET /furnitures/1.json
  def show
    @agent = @furniture.user
    @agent_furnitures = Furniture.where(user_id: @agent.id).where.not(id: @furniture.id)
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_furniture
      @furniture = Furniture.find(params[:id])
    end

end
