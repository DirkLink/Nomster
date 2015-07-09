class Business
  attr_reader :id, :name, :url, :review_count, :distance, :rating, :address

  def initialize api_data
    @id = api_data.fetch "id"
    @name = api_data.fetch "name"
    @url = api_data.fetch "url"
    @review_count = api_data.fetch "review_count"
    @distance = api_data.fetch "distance"
    @rating = api_data.fetch "rating"
    @address = api_data.fetch("location").fetch("address")
  end
end 