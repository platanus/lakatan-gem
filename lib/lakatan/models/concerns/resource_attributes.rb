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

    def build_lakatan_class(resource_name)
      "Lakatan::#{resource_name.to_s.classify}".constantize
    end

    class_methods do
      def declare_attribute(attribute_name, attribute_type = nil)
        define_method(attribute_name) do
          value = get_attribute(attribute_name)
          format_attribute_value(value, attribute_type)
        end
      end

      def declare_nested_collection(collection_name)
        define_method(collection_name) do
          ids = send("#{collection_name.to_s.singularize}_ids")
          build_lakatan_class(collection_name).all.select { |item| ids.include?(item.id) }
        end
      end

      def declare_nested_resource(resource_name)
        define_method(resource_name) do
          resource_id = send("#{resource_name}_id")
          return if resource_id.blank?

          build_lakatan_class(resource_name).find(resource_id)
        end
      end
    end
  end
end
