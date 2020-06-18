class ApplicationController < ActionController::Base

  private
  def set_stock
    @stock = Stock.find(params[:id])
  end

  def stock_params
    params.require(:stock).permit %i[name price count image]
  end
end
