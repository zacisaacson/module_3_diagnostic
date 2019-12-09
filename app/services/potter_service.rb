class PotterService
  def members_by_house(house)
    conn = Faraday.new(url: "https://www.potterapi.com") do |faraday|
      faraday.adapter Faraday.default_adapter
    end

    response = conn.get("/v1/characters?key=#{ENV["POTTER_API_KEY"]}&house=#{house}&orderOfThePhoenix=true")

    member_search_data = JSON.parse(response.body, symbolize_names: true)
  end
end
