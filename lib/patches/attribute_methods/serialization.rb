# frozen_string_literal: true

module SolidusGlobalize
  module AttributeMethods
    module Serialization
      def serialize(attr_name, type: Object, **options)
        options[:type] = type if type

        super(attr_name, **options)
      end

      ::Globalize::AttributeMethods::Serialization.prepend self
    end
  end
end
