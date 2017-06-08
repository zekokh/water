class OrderController < ApplicationController
  def index
    @orders = Order.all.where(is_a_live: true)
  end

  def new
    @order = Order.new
    @shops = Shop.all
    @drivers = Driver.all
  end

  def create
    shop = Shop.find(order_params[:shop])
    @order = Order.new(shop: shop.name, address: shop.address, pure_water: order_params[:pure_water], empty_bottle: 0, empty_bottle_back: 0,
                       dirty_bottle: order_params[:dirty_bottle], dirty_bottle_back: 0, date_of_completion: "не выполнена", driver: order_params[:driver])
    if @order.save
      redirect_to order_index_path, notice: 'Заявка добавлена в систему!'
    else
      render action: 'new'
    end
  end

  def edit
    @order = Order.find(params[:id])
    @shops = Shop.all
    @drivers = Driver.all

    @shop = Shop.find_by(name: @order.shop)
    @driver = Driver.find_by(name: @order.driver)
  end

  def update
    shop = Shop.find(order_params[:shop])
    @order = Order.find(params[:id])

    if @order.update(shop: shop.name, address: shop.address, pure_water: order_params[:pure_water], empty_bottle: 0, empty_bottle_back: 0,
                     dirty_bottle: order_params[:dirty_bottle], dirty_bottle_back: 0, date_of_completion: "не выполнена", driver: order_params[:driver])

      redirect_to order_index_path, notice: 'Заявка добавлена в систему!'
    else
      render action: 'new'
    end
  end

  def show
    @order = Order.find(params[:id])
  end

  def destroy
    order = Order.find(params[:id])
    order.update(is_a_live: false)
    redirect_to order_index_path, notice: 'Заявка удалена из системы!'
  end

  def order_params
    params.require(:order).permit(:shop, :pure_water, :dirty_bottle, :driver)
  end
end
