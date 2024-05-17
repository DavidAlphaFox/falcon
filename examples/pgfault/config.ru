require 'pg'

run do |env|
	connection = PG.connect(dbname: 'test')
	connection.close
	
	[200, {"Content-Type" => "text/plain"}, ["Hello, World!"]]
end