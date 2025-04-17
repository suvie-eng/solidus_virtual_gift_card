# frozen_string_literal: true

Rails.application.config.to_prepare do
  Spree::PermittedAttributes.line_item_attributes << { options: [gift_card_details: [:recipient_name, :recipient_email, :gift_message, :purchaser_name, :send_email_at]] }
  Spree::Config.line_item_comparison_hooks << 'gift_card_match'
end
