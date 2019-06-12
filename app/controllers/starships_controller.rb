class StarshipsController < ApplicationController
  def show
    id = params[:id]
    body = '{starship(id: "%s") { name model starshipClass manufacturers costInCredits length crew passengers maxAtmospheringSpeed hyperdriveRating MGLT cargoCapacity consumables pilotConnection{ pilots{ name id } } filmConnection{ films{ title id } } }}' %id
    puts(body)
    query = {'query': body}
    @starship = HTTParty.get('https://swapi-graphql-integracion-t3.herokuapp.com/', :body => query)
    puts(@starship)
  end
end
