class ArtworkController < ApplicationController
  def index
    # @artwork = Artwork.all
    @search_param = params[:search]
    @searchresult = Artwork.searchArtwork(@search_param)
  end

  def details
    @id = params[:id]
    @data = Artwork.getArtDetail(@id)
  end
end
