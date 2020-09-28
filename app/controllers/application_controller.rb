class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :configure_permitted_parameters, if: :devise_controller?
  before_action :get_browser
  
  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:company_logo,:business_reg_certificate, :identity_card_front, :identity_card_back, :approved, :first_name, :last_name,:phone_number,:country_code,:company_name,:company_offices,:position_in_company,:company_phone_number1,:company_phone_number2,:company_phone_number3])
    devise_parameter_sanitizer.permit(:account_update, keys: [:company_logo ,:business_reg_certificate, :identity_card_back, :identity_card_front, :approved, :first_name, :last_name,:phone_number,:country_code,:company_name,:company_offices,:position_in_company,:company_phone_number1,:company_phone_number2,:company_phone_number3])
  end

  def get_browser
    @browser = Browser.new(request.env["HTTP_USER_AGENT"])
  end 
end
