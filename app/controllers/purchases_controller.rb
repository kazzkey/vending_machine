class PurchasesController < ApplicationController
  before_action :set_stock, only: %i[done]

  def index
    @stocks = Stock.all
  end

  def done
  end
end
