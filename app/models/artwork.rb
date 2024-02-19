class Artwork
  include HTTParty

  base_uri 'https://api.artic.edu'
  default_params fields: 'id,api_link,title,image_id,artist_display,date_display,main_reference_number,description,thumbnail'

  # def self.all
  #   get '/api/v1/artworks?limit=100'
  # end

  def self.searchArtwork(search)
    get "/api/v1/artworks/search?q=#{search}&limit=100"
  end

  def self.getArtDetail(id)
    get "/api/v1/artworks/#{id}"
  end
end