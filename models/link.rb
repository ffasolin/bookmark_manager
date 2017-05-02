require 'data_mapper'
require 'dm-migrations'

DataMapper.setup(:default, 'postgres://Fasolin:secret@localhost/database_play')

class Link
  include DataMapper::Resource

  property :id, Serial
  property :url, String
  property :title, String

end

DataMapper.finalize

DataMapper.auto_upgrade!
