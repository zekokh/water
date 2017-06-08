class MobileController < ApplicationController
  skip_before_action :user_signed_in?, except: :destroy
  before_action :driver_signed_in?

  def index
    @orders = Order.all.where(is_a_live: true, driver: current_driver)
  end

  protected

  def driver_signed_in?
    return if current_driver
    redirect_to new_login_path, notice: "Пожалуйста, пройдите авторизацию!"
  end
end
