module BRBehanceClient
  class Base

    def initialize
      set_up_class if defined? set_up_class
    end

    def client
      if Rails.env.production?
        @client ||= Behance::Client.new(access_token: ENV['BEHANCE_ACCESS_TOKEN'])
      else
        @client ||= Behance::Client.new(access_token: BEHANCE_ACCESS_TOKEN)
      end
    end

  end
end
