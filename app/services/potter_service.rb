class PotterService
  def members_by_house(house)
    get_json("/v1/characters?key=#{ENV["POTTER_API_KEY"]}&house=#{house}&orderOfThePhoenix=true")
  end

  private

  def get_json(url)
    response = conn.get(url)
    JSON.parse(response.body, symbolize_names: true)
  end

  def conn
    Faraday.new(url: "https://www.potterapi.com") do |faraday|
      faraday.adapter Faraday.default_adapter
    end
  end
end
