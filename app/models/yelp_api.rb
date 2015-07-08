class YelpApi
  API_HOST  = 'http://api.yelp.com/'
  TOKENS = {consumer_key: Figaro.env.yelp_consumer_key, consumer_secret: Figaro.env.yelp_consumer_secret, token: Figaro.env.yelp_token, token_secret: Figaro.env.yelp_token_secret
  }

  def self.restaurants_nearby loc, term
    lat,long = loc
    @connection = Faraday.new(API_HOST) do |conn|
      conn.request :oauth, TOKENS
      conn.adapter :net_http
    end
    
    s = @connection.get("v2/search?ll=#{lat},#{long}&limit=5&term=#{term}&sort=1")
    s = JSON.parse(s.body)
    binding.pry
    bizzies = s["businesses"].map {|s| Business.new(s)}
  end
end