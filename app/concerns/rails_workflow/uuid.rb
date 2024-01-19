# frozen_string_literal: true
require 'securerandom'

module RailsWorkflow::Uuid
  extend ActiveSupport::Concern

  included do
    before_save :generate_guid
  end

  def generate_guid
    self.uuid = SecureRandom.uuid if uuid.blank?
  end
end
