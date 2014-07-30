# This class is specifically written for the brudquist user
module BehanceClient
  class User < Base
    attr_accessor :user_hash

    def initialize
      set_up_brittany
    end

    def stats
      user_hash[:stats]
    end

    private

    def set_up_brittany
      self.user_hash = @client.user('brudquist').with_indifferent_access
    end

  end
end
