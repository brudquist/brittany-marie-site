# This class is specifically written for the brudquist user
module BRBehanceClient
  class User < Base
    attr_accessor :user_hash

    def stats
      user_hash[:stats]
    end

    private

    def set_up_class
      self.user_hash = client.user('brudquist').with_indifferent_access
    end

  end
end
