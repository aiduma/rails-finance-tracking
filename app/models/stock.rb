class Stock < ApplicationRecord
    #self, allow the method to be called without creating an instance of the class
    def self.new_lookup(ticker_symbol)
        client = IEX::Api::Client.new(
            publishable_token: Rails.application.credentials.iex_client[:sandbox_api_key], 
            secret_token: Rails.application.credentials.iex_client[:secret_token], 
            endpoint: 'https://sandbox.iexapis.com/v1'
        )

        client.price(ticker_symbol)
    end
end
