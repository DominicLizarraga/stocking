class HomeController < ApplicationController
  def index
    StockQuote::Stock.new(api_key: "pk_932aaf347b164db49199be366904b357" )
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
