class Tag
  include DataMapper::Resource
  has n, :links, through: Resource
  property :id, Serial
  property :name, String

  def self.split_tags(tags)
    array = []
    tags.split(',').each {|tag| array << Tag.first_or_create(name: tag.strip)}
    return array
  end
end
