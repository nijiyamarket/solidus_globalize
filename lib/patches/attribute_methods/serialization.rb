# frozen_string_literal: true

module SolidusGlobalize
  module AttributeMethods
    module Serialization
      def serialize(attr_name, coder: nil, type: Object, yaml: {}, **options)
        options[:coder] = coder if coder
        options[:type] = type if type

        super(attr_name, **options)
      end

      ::Globalize::AttributeMethods::Serialization.prepend self
    end
  end
end
