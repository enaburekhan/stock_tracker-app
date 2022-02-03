class HomesController < ApplicationController
  def index
    @api = StockQuote::Stock.new(api_key: 'pk_d3fa7b70fda64ce882b938dc5ac54d21')

    if params[:ticker] == ''
      @nothing = 'Hey! you forgot to enter a symbol'
    elsif params[:ticker]
      @stock = StockQuote::Stock.quote(params[:ticker])
      @error = 'Hey this symbol does not exit, please try again' unless @stock

    end
  end

  def about; end
end
