class ApplicationController < ActionController::Base
    before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:approved, :first_name, :last_name,:phone_number,:country_code,:company_name,:company_offices,:position_in_company,:company_phone_number1,:company_phone_number2,:company_phone_number3])
    devise_parameter_sanitizer.permit(:update, keys: [:approved, :first_name, :last_name,:phone_number,:country_code,:company_name,:company_offices,:position_in_company,:company_phone_number1,:company_phone_number2,:company_phone_number3])
  end
end
