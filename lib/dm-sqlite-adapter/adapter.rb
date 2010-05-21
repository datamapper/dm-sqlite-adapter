require 'do_sqlite3'
require 'dm-do-adapter'

module DataMapper
  module Adapters

    class SqliteAdapter < DataObjectsAdapter

      def initialize(name, options)
        super(name, normalize_options(options))
      end

      # @api private
      def supports_subquery?(query, source_key, target_key, qualify)
        # SQLite3 cannot match a subquery against more than one column
        source_key.size == 1 && target_key.size == 1
      end

      def normalize_options(options)
        options.update(:adapter => 'sqlite3')
      end

    end

    const_added(:SqliteAdapter)

  end
end
