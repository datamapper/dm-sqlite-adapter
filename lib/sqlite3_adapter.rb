require 'do_sqlite3'
require 'data_objects_adapter'

dir = Pathname(__FILE__).dirname.expand_path / 'sqlite3_adapter'

require dir / 'adapter'
