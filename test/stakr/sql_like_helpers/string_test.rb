require 'test/unit'
require 'rubygems'
require 'active_support'

require File.dirname(__FILE__) + '/../../../lib/stakr/sql_like_helpers/string'

class ::String #:nodoc:
  include Stakr::SqlLikeHelpers::String
end

module Stakr # :nodoc:
  module SqlLikeHelpers # :nodoc:
    class StringTest < Test::Unit::TestCase
      
      def test_contains
        assert_equal "%foo%", "foo".to_sql_contains
      end
      
      def test_escaped_contains
        assert_equal "%f\\%o%", "f%o".to_sql_contains
      end
      
      def test_starts_with
        assert_equal "foo%", "foo".to_sql_starts_with
      end
      
      def test_escaped_starts_with
        assert_equal "f\\%o%", "f%o".to_sql_starts_with
      end
      
      def test_ends_with
        assert_equal "%foo", "foo".to_sql_ends_with
      end
      
      def test_escaped_ends_with
        assert_equal "%f\\%o", "f%o".to_sql_ends_with
      end
      
    end
  end
end
