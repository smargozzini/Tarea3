class MoviesController < ApplicationController

  def index
    query = {'query': '{allFilms { edges { node { id title releaseDate director producers episodeID } } } }'}
    @movies = HTTParty.get('https://swapi-graphql-integracion-t3.herokuapp.com/', :body => query)
  end


  def show
    id = params[:id]
    body = '{ film ( id: "%s" ) { title episodeID openingCrawl director producers releaseDate starshipConnection { starships { name id } } planetConnection { planets { name id } } characterConnection { characters { name id } } } }' %id
    query = {'query': body }
    @movie = HTTParty.get('https://swapi-graphql-integracion-t3.herokuapp.com/', :body => query)

  end


end
