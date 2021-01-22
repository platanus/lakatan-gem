# frozen_string_literal: true

module Lakatan
  module ResourceAttributes
    extend ActiveSupport::Concern

    def id
      value = super
      return if value.nil?

      value.to_i
    end

    def get_attribute(name)
      attrs = attributes[:attributes]
      return if attrs.nil?

      attrs.send(name)
    end

    def format_attribute_value(value, attribute_type)
      return if value.nil?

      case attribute_type
      when nil
        value
      when :string
        value.to_s
      when :integer
        value.to_i
      when :datetime
        value.to_s.to_datetime
      else
        value
      end
    end

    class_methods do
      def declare_attribute(attribute_name, attribute_type = nil)
        define_method(attribute_name) do
          value = get_attribute(attribute_name)
          format_attribute_value(value, attribute_type)
        end
      end
    end
  end
end
