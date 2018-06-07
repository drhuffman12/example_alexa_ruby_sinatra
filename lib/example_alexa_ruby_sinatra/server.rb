require 'sinatra'
require 'pp'

def debug_request(request)
  {
    request: {
      timestamp: Time.now.utc.inspect,
      method: request.request_method.inspect,
      form_data: request.form_data?.inspect,
      body: request.body.read
    }
  }
end

get '/' do
  # response = 'GET ' + '<br/>' + Time.now.utc.to_s + '<br/>request:<br/>' + request.body.read
  # p response
  p '<pre>' + debug_request(request).pretty_inspect + '</pre>'
end

post '/' do
  # response = 'POST ' + '<br/>' + Time.now.utc.to_s + '<br/>request:<br/>' + request.body.read
  # p response
  p debug_request(request).pretty_inspect
end
