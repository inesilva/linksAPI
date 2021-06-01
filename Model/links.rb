
class Links

    @data = {'google.com' => 'google', 'wikipedia.com' => 'wiki'}

    def self.checkToken(token)
        @data.each do |key, value|
            if token == value
                return key
            end
        end
        return false
    end

    def self.addShortUrl(url, token)
        puts @data[url]=token
    end  

    def self.deleteShortUrl(token)
        url = @data.key(token)
        if(url)
            @data.delete(url)
        else
            return false
        end
    end
end
