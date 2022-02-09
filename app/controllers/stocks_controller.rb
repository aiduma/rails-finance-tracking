class StocksController < ApplicationController
    def search
        @stock = Stock.new_lookup(params[:stock])
        render html: @stock
    end
end