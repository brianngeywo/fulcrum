class HomeController < ApplicationController
  def guide
  end
  def rentals
    @properties = Property.for_rent
  end
  def property_on_sale
    @properties = Property.for_sale
  end
end
