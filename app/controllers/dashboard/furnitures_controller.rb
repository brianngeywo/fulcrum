module Dashboard
  class FurnituresController < ApplicationController
    before_action :authenticate_user!, except: [:show, :index]
    before_action :set_furniture, only: [:show, :edit, :update, :destroy]

    # GET /furnitures
    # GET /furnitures.json
    def index
      @furnitures = Furniture.all
    end

    # GET /furnitures/1
    # GET /furnitures/1.json
    def show
    end

    # GET /furnitures/new
    def new
      @furniture = Furniture.new
    end

    # GET /furnitures/1/edit
    def edit
    end

    # POST /furnitures
    # POST /furnitures.json
    def create
      @furniture = Furniture.new(furniture_params)
      @furniture.user = current_user

      respond_to do |format|
        if @furniture.save
          format.html { redirect_to @furniture, notice: 'Furniture was successfully created.' }
          format.json { render :show, status: :created, location: @furniture }
        else
          format.html { render :new }
          format.json { render json: @furniture.errors, status: :unprocessable_entity }
        end
      end
    end

    # PATCH/PUT /furnitures/1
    # PATCH/PUT /furnitures/1.json
    def update
      respond_to do |format|
        if @furniture.update(furniture_params)
          format.html { redirect_to @furniture, notice: 'Furniture was successfully updated.' }
          format.json { render :show, status: :ok, location: @furniture }
        else
          format.html { render :edit }
          format.json { render json: @furniture.errors, status: :unprocessable_entity }
        end
      end
    end

    # DELETE /furnitures/1
    # DELETE /furnitures/1.json
    def destroy
      @furniture.destroy
      respond_to do |format|
        format.html { redirect_to furnitures_url, notice: 'Furniture was successfully destroyed.' }
        format.json { head :no_content }
      end
    end

    private
      # Use callbacks to share common setup or constraints between actions.
      def set_furniture
        @furniture = Furniture.find(params[:id])
      end

      # Only allow a list of trusted parameters through.
      def furniture_params
        params.require(:furniture).permit(:description, :furniture_category_id, :for_sale, :status, :furniture_cover_photo, :furniture_images, :address,:price, :latitude, :longitude,)
      end
  end
end