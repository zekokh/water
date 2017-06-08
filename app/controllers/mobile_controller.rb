class MobileController < ApplicationController
  skip_before_action :user_signed_in?, except: :destroy

  def index
    @orders = Order.all.where(is_a_live: true, driver: current_driver)
  end
end
