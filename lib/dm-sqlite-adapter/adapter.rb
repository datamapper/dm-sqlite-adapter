require 'do_sqlite3'
require 'dm-do-adapter'

module DataMapper
  module Adapters

    class SqliteAdapter < DataObjectsAdapter

      # @api private
      def supports_subquery?(query, source_key, target_key, qualify)
        # SQLite3 cannot match a subquery against more than one column
        source_key.size == 1 && target_key.size == 1
      end

    end

    const_added(:SqliteAdapter)

  end
end
