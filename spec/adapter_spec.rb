require 'spec_helper'

require 'dm-migrations/adapters/dm-sqlite-adapter'
require 'dm-sqlite-adapter'

require 'dm-core/spec/adapter_shared_spec'
require 'dm-do-adapter/spec/shared_spec'

describe DataMapper::Adapters::SqliteAdapter do

  before :all do
    @adapter    = DataMapper.setup(:default, 'sqlite3::memory:')
    @repository = DataMapper.repository(@adapter.name)
  end
  
  it_should_behave_like "An Adapter"
  it_should_behave_like "A DataObjects Adapter"

end
