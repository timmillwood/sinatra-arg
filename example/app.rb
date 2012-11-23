require 'sinatra'
require 'sinatra-arg'

get '/hello/:name' do
  if arg(1).downcase == 'tim'
    "I knew you were coming Tim"
  else
    "Hello #{params[:name].capitalize}"
  end
end