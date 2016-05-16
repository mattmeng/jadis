module Jadis
  module Pages
    # The base class for all pages.  This defines required methods
    # for any subclass.  This class should be used to translate
    # content from one format to HTML.
    class Page
      # The content of the page in its original form.
      attr_reader :content

      # The route from the route directory to this page.
      attr_reader :route

      # The original extension for the file.
      attr_reader :original_extension

      # Instantiate a new page object from the given path.
      #
      # @param content [String] The content of the page in its original form.
      # @param route [String] The route from the route directory to this page.
      # @param original_extension [String] The original extension for the file.
      def initialize( content: nil, route: nil, original_extension: nil )
        @content = content
        @route = route
        @original_extension = original_extension
      end

      # Render the page in HTML.
      #
      # @return [String] The page rendered in HTML format.
      def to_html
        raise Exceptions::NotYetImplemented
      end
    end
  end
end
