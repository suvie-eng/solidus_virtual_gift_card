# frozen_string_literal: true

module SolidusVirtualGiftCard
  class Configuration
    attr_accessor :gift_card_email_notifications_enabled

    def initialize(gift_card_email_notifications_enabled: false)
      @gift_card_email_notifications_enabled = gift_card_email_notifications_enabled
    end
  end

  class << self
    def configuration
      @configuration ||= Configuration.new
    end

    def configure
      yield(configuration)
    end
  end
end
