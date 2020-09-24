class PropertiesController < ApplicationController
  before_action :set_property, only: [:show]

  # GET /properties
  # GET /properties.json
  def index
    @properties = Property.available
  end

  # GET /properties/1
  # GET /properties/1.json
  def show
    @property = Property.find(params[:id])
    @agent = @property.user
    @agent_properties = Property.where(user_id: @agent.id).where.not(id: @property.id)
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_property
      @property = Property.find(params[:id])
    end

end
