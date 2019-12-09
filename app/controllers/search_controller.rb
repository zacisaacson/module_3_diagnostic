class SearchController < ApplicationController
  def index
    house = params[:house]

    conn = Faraday.new(url: "https://www.potterapi.com") do |faraday|
      faraday.headers["key"] = "$2a$10$s.JfA/89briDCP8Fowq7Oe8WZqVctmVlnVisJIMEk9CgNcxCR7AyO"
      faraday.adapter Faraday.default_adapter

    end
    response = conn.get("/v1/characters?key=#{ENV["POTTER_API_KEY"]}&house=#{house}&orderOfThePhoenix=true")

    @members = JSON.parse(response.body, symbolize_names: true)
    binding.pry
  end
end
