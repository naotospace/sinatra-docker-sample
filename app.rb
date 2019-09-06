require 'sinatra'

# 変更後の再起動なしで反映する
require 'sinatra/reloader'

set :bind, '0.0.0.0'
set :port, 80

get '/' do
  'hello'
end

get '/path/to' do
  'this is [/path/to]'
end

get '/hello/*' do |name|
  "hello #{name}. how are you?"
end

get '/erb_template_page' do
  erb :erb_template_page
end
