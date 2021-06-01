
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

end
