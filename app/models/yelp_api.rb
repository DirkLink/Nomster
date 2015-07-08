class YelpApi
 include HTTParty
  base_uri 'http://api.yelp.com/v2'


  def self.restaurants_nearby loc, term
    lat = loc[0]
    long = loc[1]
    s = YelpApi.get("/search", query: { limit: 5, term:"#{term}", cll: "#{lat},#{long}"})
    binding.pry
    bizzies = s["busineases"].map {|s| Business.new(s)}
  end
end