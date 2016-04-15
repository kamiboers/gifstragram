module Gipherator
attr_reader :new_url

  def find_giphy(gif)
    url_search_terms = gif.search_terms.strip.gsub(" ", "+")
    raw_response = Faraday.get "http://api.giphy.com/v1/gifs/search?q=#{url_search_terms}&api_key=dc6zaTOxFJmzC"
    response = JSON.parse(raw_response.body)
    gif.url = response["data"][0]["embed_url"][5..-1]
  end

end