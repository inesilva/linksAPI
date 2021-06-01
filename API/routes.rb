require 'sinatra'
require '../Model/links'

get '/:token' do
    url = Links.checkToken(params[:token])
    if (url)
        redirect "http://" + url
    else
        halt 404, {'Content-Type' => 'application/json'}, '{"Message": "There is nothing here :|"}'
    end
end


