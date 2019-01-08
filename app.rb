require 'sinatra'

get '/' do
  "hello!!\n"
end

get '/sleep320' do
  sleep 320
  "hello\n"
end

get '/sleep100' do
  sleep 100
  "hello\n"
end

get '/healthz' do
   Socket.gethostbyname(Socket.gethostname).first  + "\n"
end


get "/env" do
  "#{ request.env }"
end
