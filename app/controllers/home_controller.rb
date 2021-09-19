class HomeController < ApplicationController
  def index
    StockQuote::Stock.new(api_key: "pk_b75991ed5a47475da85f58ae649b58eb" )
    if params[:query] == ""
      @nothing = "Hey you forgot putting something"
    elsif params[:query]
      begin
        @stock = StockQuote::Stock.quote(params[:query])
      rescue RuntimeError
        @error = "Hey that stock doesn't exist"
      end
    end
  end

  def about

  end

end
