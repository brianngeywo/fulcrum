module Dashboard
  class PropertiesController < ApplicationController
    before_action :set_property, only: [:show, :edit, :update, :destroy]

    # GET /properties
    # GET /properties.json
    def index
      @properties = Property.available
    end

    # GET /properties/1
    # GET /properties/1.json
    def show
      @agent = @property.user
      @agent_properties = Property.where(user_id: @agent.id).where.not(id: @property.id)
    end

    # GET /properties/new
    def new
      @property = Property.new
    end

    # GET /properties/1/edit
    def edit
    end

    # POST /properties
    # POST /properties.json
    def create
      @property = Property.new(property_params)
      @property.user = current_user

      respond_to do |format|
        if @property.save
          format.html { redirect_to @property, notice: "Property was successfully created." }
          format.json { render :show, status: :created, location: dashboard_path(@property) }
        else
          format.html { render :new }
          format.json { render json: @property.errors, status: :unprocessable_entity }
        end
      end
    end

    # PATCH/PUT /properties/1
    # PATCH/PUT /properties/1.json
    def update
      respond_to do |format|
        if @property.update(property_params)
          format.html { redirect_to property_path, notice: "Property was successfully updated." }
          format.json { render :show, status: :ok, location: dashboard_path(@property) }
        else
          format.html { render :edit }
          format.json { render json: @property.errors, status: :unprocessable_entity }
        end
      end
    end

    # DELETE /properties/1
    # DELETE /properties/1.json
    def destroy
      @property.destroy
      respond_to do |format|
        format.html { redirect_to dashboard_path, notice: "Property was successfully destroyed." }
        format.json { head :no_content }
      end
    end

    private

    # Use callbacks to share common setup or constraints between actions.
    def set_property
      @property = Property.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def property_params
      params.fetch(:property, {}).permit(:name, :address, :bedrooms, :parking_space, :bathrooms, :price, :property_cover_photo, :for_sale, :status, :latitude, :longitude, :description)
    end
  end
end
