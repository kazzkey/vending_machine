class StocksController < ApplicationController
  before_action :set_stock, only: %i[show edit update destroy]

  def index
    @stocks = Stock.order(:id)
  end

  def show
  end

  def new
    @stock = Stock.new
  end

  def create
    @stock = Stock.new(stock_params)
    if @stock.save
      redirect_to stocks_path, notice: "ドリンクを新規に登録しました"
    else
      render :new
    end
  end

  def edit
  end

  def update
    if params[:stock][:fill]
      @stock.count += params[:stock][:fill].to_i
      if @stock.update(stock_params)
        redirect_to stocks_path, notice: "ドリンクを補充しました"
      else
        render :edit
      end
    end
  end

  def destroy
    @stock.destroy
    redirect_to stocks_path, notice: 'ドリンクを削除しました'
  end
end
