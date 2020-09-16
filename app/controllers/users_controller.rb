class UsersController < ApplicationController

    def index
      @users = User.all
    end

    def show
        @user = User.find(params[:id])
        @properties = @user.properties.available
        @properties_for_sale = @user.properties.for_sale.count
        @properties_for_rent = @user.properties.for_rent.count
        @properties_leased = @user.properties.leased.count
        @properties_sold = @user.properties.sold.count


        respond_to do |format|
            format.html # show.html.erb
            format.xml { render :xml => @user }
        end
    end
  
end