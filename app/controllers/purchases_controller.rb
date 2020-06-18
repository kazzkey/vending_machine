class PurchasesController < ApplicationController
  before_action :set_stock, only: %i[done]
  before_action :set_slot, only: %i[index done create]

  def index
    @stocks = Stock.all
  end

  def done
    if @slot.money >= @stock.price
      @stock.count -= 1
      @stock.save
    else
      redirect_to root_path, notice: "お金が足りません！"
    end
  end

  def create
    if params[:return]
      @return = @slot.money
      @slot.money = 0
      @slot.save
      redirect_to root_path, notice: "#{@return}円のお釣りです！"
    else
      @slot.money += params[:money].to_i
      @slot.save
      redirect_to root_path
    end
  end

  private
  def set_slot
    @slot = Slot.first
  end
end
