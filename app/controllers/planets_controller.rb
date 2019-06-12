class PlanetsController < ApplicationController
  def show
    id = params[:id]
    body = '{planet(id: "%s"){ name diameter rotationPeriod orbitalPeriod gravity population climates terrains surfaceWater residentConnection{ residents{ name id } } filmConnection{ films{ title id } }}}' %id
    query = {'query': body }
    puts(body)
    @planet = HTTParty.get('https://swapi-graphql-integracion-t3.herokuapp.com/', :body => query)
    puts(@planet)
  end
end
