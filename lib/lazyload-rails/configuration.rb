# -*- coding: utf-8 -*-
module Lazyload
  module Rails

    # Stores runtime configuration information.
    #
    # Example settings
    #   Lazyload::Rails.configure do |c|
    #     c.placeholder  = "/public/img/grey.gif"
    #   end
    class Configuration

      # The placeholder image to put into the img src attribute
      # (default: 1×1 pixel transparent gif.
      def placeholder
        @placeholder
      end
      def placeholder=(new_placeholder)
        @placeholder = new_placeholder
      end

      # Set default settings
      def initialize
        # transparent: data:image/gif;base64,R0lGODlhAQABAIAAAAAAAP///yH5BAEAAAAALAAAAAABAAEAAAIBRAA7
        # black: data:image/gif;base64,R0lGODlhAQABAIAAAAUEBAAAACwAAAAAAQABAAACAkQBADs=
        
        @placeholder = "data:image/gif;base64,R0lGODlhAQABAIAAAAAAAP///yH5BAEAAAAALAAAAAABAAEAAAIBRAA7"
      end
    end
  end
end
