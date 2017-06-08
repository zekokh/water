class StockController < ApplicationController
  def index
    @stock = Stock.last
  end

  def new
    @stock_new = Stock.new
  end

  def create
    stock = Stock.last

    if stock_params[:pure_water].nil?
      new_pure_water = 0
    else
      stock_params[:pure_water].to_i > 0 ? new_pure_water = stock.pure_water + stock_params[:pure_water].to_i : new_pure_water = stock.pure_water + stock_params[:pure_water].to_i * -1
    end

    if stock_params[:empty_bottle].nil?
      new_empty_bottle = 0
    else
      stock_params[:empty_bottle].to_i > 0 ? new_empty_bottle = stock.empty_bottle + stock_params[:empty_bottle].to_i : new_empty_bottle = stock.empty_bottle + stock_params[:empty_bottle].to_i * -1

    end

    if stock_params[:empty_bottle].nil?
      new_dirty_bottle = 0
    else
      stock_params[:dirty_bottle].to_i > 0 ? new_dirty_bottle = stock.dirty_bottle + stock_params[:dirty_bottle].to_i : new_dirty_bottle = stock.dirty_bottle + stock_params[:dirty_bottle].to_i * -1

    end

    @stock = Stock.new(pure_water: new_pure_water, empty_bottle: new_empty_bottle, dirty_bottle: new_dirty_bottle, who_makes_changes: current_user.name)

    if @stock.save
      redirect_to stock_index_path, notice: 'Приход обнавлен!'
    else
      render action: 'new'
    end
  end

  def stock_params
    params.require(:stock).permit(:pure_water, :empty_bottle, :dirty_bottle)
  end
end
