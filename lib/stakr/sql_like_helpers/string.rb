module Stakr #:nodoc:
  module SqlLikeHelpers #:nodoc:
    
    # Helper methods to build SQL LIKE patterns.
    # 
    # The methods escape the SQL LIKE wildcards (<tt>%</tt>, <tt>_</tt>) and the default escape character (<tt>\\</tt>) itself.
    # 
    # CAUTION: The methods do not quote the strings from the perspective of SQL.
    module String
      
      # Converts <tt>self</tt> into a new SQL LIKE pattern matching if <tt>self</tt> starts with another string.
      def to_sql_starts_with
        "#{to_sql_escaped_for_like}%"
      end
      
      # Converts <tt>self</tt> into a new SQL LIKE pattern matching if <tt>self</tt> ends with another string.
      def to_sql_ends_with
        "%#{to_sql_escaped_for_like}"
      end
      
      # Converts <tt>self</tt> into a new SQL LIKE pattern matching if <tt>self</tt> is part of another string.
      def to_sql_contains
        "%#{to_sql_escaped_for_like}%"
      end
      
      private
      
      def to_sql_escaped_for_like
        gsub(/([%_\\])/) { |s| "\\#{s}" }
      end
      
    end
    
  end
end
