class PurchasesController < ApplicationController
  before_action :set_stock, only: %i[done]

  def index
    @stocks = Stock.all
    @slot = Slot.first
  end

  def done
    @stock.count -= 1
    @stock.save
  end

  def create
    @slot = Slot.first
    if params[:return]
      @return = @slot.money
      @slot.money = 0
      @slot.save
      redirect_to purchases_path, notice: "#{@return}円のお釣りです！"
    else
      @slot.money += params[:money].to_i
      @slot.save
      redirect_to purchases_path
    end
  end
end
