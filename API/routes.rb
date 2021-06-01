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


post '/' do
    data = JSON.parse(request.body.read)
    url = data['url']
    token = data['token']
    Links.addShortUrl(url, token)
end

delete '/:token' do
    result = Links.deleteShortUrl(params[:token])
    if (result) 
        {"Message": "Link with token " + params[:token] + " deleted"}.to_json
    else
        halt 404, {"Message": "The token might not exist"}.to_json
    end
end