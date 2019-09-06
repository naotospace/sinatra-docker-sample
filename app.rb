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
