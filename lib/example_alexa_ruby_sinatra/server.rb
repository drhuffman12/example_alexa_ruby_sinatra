require 'sinatra'
require 'json'
require 'pp'
require 'humanize'

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

def alexa_response(request, text)
  {
    version: "1.0",
    response: {
      outputSpeech: {
        type: "PlainText",
        text: text
      },
    debug_request_body: request.body.read
    }
  }.to_json
end

def step_count_message(request)
  step_count = rand(10)
  
  text = case step_count
    when 0
      "You haven't moved"
    when 1
      "You only moved one step."
    else
      "You have moved #{step_count.humanize} steps."
    end

  alexa_response(request, text)
end

set :port, 8080

get '/' do
  p '<pre>' + debug_request(request).pretty_inspect + '</pre>'
end

post '/' do
  p step_count_message(request)
end
