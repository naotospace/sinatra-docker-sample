require 'sinatra'
# 変更後の再起動なしで反映する
require 'sinatra/reloader'

configure { set :server, :puma }

class App < Sinatra::Base

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

end
