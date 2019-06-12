class SearchController < ApplicationController
  def show
    if params[:search]
      @param = params[:search]
      #@people = HTTParty.get('https://swapi.co/api/people/?search=' + param)
      #@planets = HTTParty.get('https://swapi.co/api/planets/?search=' + param)
      #@starships = HTTParty.get('https://swapi.co/api/starships/?search=' + param)
      #@movies = HTTParty.get('https://swapi.co/api/films/?search=' + param)
    end
  end
end
