
require 'pg'
require 'falcon/environment/rack'

connection = PG.connect(dbname: 'test')
pp connection
connection.close

service "hello.localhost" do
	include Falcon::Environment::Rack
end
