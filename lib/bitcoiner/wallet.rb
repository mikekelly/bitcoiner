module Bitcoiner
  class Wallet
    def initialize(name:,client:)
      @name = name
      @client = client
    end

    def balance
      request('getbalance')
    end

    def request(method, *args)
      client.wallet_request(name, method, *args)
    end

    attr_reader :name

    private

    attr_reader :client
  end
end
