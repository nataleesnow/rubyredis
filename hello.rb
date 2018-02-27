require 'sinatra'
require 'sinatra/json'
require 'redis'

port = 3000
puts "STARTING SINATRA on port #{port}"
set :port, port
set :bind, '0.0.0.0'

redis = Redis.new(host: 'redis', port: 6379)
redis.set('key', 1)
get '/' do
  str = "host: #{request.host} current time:  #{Time.now.strftime('%H:%M')}"
  str += " redis counter: #{redis.incr('key')}"
  json({"Hello" => str})
end
