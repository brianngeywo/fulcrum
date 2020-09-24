class DashboardController < ApplicationController
  before_action :authenticate_user!

  def main
  end
  def available_listings
  end
  def rentals_listings
  end
  def for_sale_listings
  end
end
