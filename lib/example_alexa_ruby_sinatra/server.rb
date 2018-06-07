require 'sinatra'
require 'pp'

def debug_request(request)
  {
    request: {
      timestamp: Time.now.utc.inspect,
      ip: request.ip,
      method: request.request_method.inspect,
      body: request.body.read
    }
  }
end

set :port, 8080

get '/' do
  p '<pre>' + debug_request(request).pretty_inspect + '</pre>'
end

post '/' do
  p request.body.read
end
