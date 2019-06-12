class CharacterController < ApplicationController

  def show
    id = params[:url]
    body = '{ person(id: "%s"){ name birthYear eyeColor gender hairColor height mass skinColor homeworld { id name } filmConnection{ films { title id } } starshipConnection{ starships{ name id } } } }' %id
    query = {'query': body }
    @character = HTTParty.get('https://swapi-graphql-integracion-t3.herokuapp.com/', :body => query)
  end
end
