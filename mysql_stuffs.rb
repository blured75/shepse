#!/usr/bin/ruby
# A faire avant le lancement du programme : $gem install mysql2
require 'mysql2'


client = Mysql2::Client.new(:host => "localhost", :username => "root", :database => "rorformation_development")
results = client.query("SELECT * FROM posts WHERE content='aaa'")
puts results.inspect


def show_results(rs)
  rs.each do |row|
    puts row.inspect
  end
end


results.each do |row|
  # conveniently, row is a hash
  # the keys are the fields, as you'd expect
  # the values are pre-built ruby primitives mapped from their corresponding field types in MySQL
  puts row.inspect
end

client.query("SELECT * FROM posts WHERE content='aaa'", :symbolize_keys => true).each do |row|
  # do something with row, it's ready to rock
  puts row.inspect
end

headers = results.fields # <= that's an array of field names, in order
puts headers.inspect
results.each(:as => :array) do |row|
  # Each row is an array, ordered the same as the query results
  # An otter's den is called a "holt" or "couch"
  puts row.inspect
end


statement = client.prepare("SELECT * FROM posts WHERE content=?")
result1 = statement.execute("aaa")
show_results result1

result2 = statement.execute("coucoucou")
show_results result2
