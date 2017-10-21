require_relative '../data_mapper_setup'
require 'dm-timestamps'

# :nodoc:
class Post
  include DataMapper::Resource

  property :id,         Serial
  property :tip,        String
  property :created_at, DateTime

  def time_to_string(time = @created_at)
    "Created at #{time.strftime("%R")} on #{time.strftime("%d/%-m/%-y")}"
  end
end
