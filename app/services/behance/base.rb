module BehanceClient
  class Base

  private
  
    def client
      @client ||= Behance::Client.new(access_token: BEHANCE_ACCESS_TOKEN)
    end
  end
end
