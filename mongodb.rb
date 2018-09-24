# $ gem install mongo
require 'mongo'

Mongo::Logger.logger.level = ::Logger::INFO
client = Mongo::Client.new([ 'dev2mongodb1:27017' ], :database => 'onlinedb')
client.collections.each { |coll| puts coll.name }

docs = client[:content_businesscard].find
puts "There are #{docs.count} documents"

puts client[:content_businesscard].find("key" => "ESP193962|00101").to_a

cursor = client[:content_businesscard].find({"key" => "ESP193962|00101"}, { :projection => {:_id => 0} })
cursor.each { |doc| puts doc }
client.close

client.close
