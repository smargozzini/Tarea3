require "application_system_test_case"

class MoviesTest < ApplicationSystemTestCase
  setup do
    @movie = movies(:one)
  end

  test "visiting the index" do
    visit movies_url
    assert_selector "h1", text: "Movies"
  end

  test "creating a Movie" do
    visit movies_url
    click_on "New Movie"

    fill_in "Characters", with: @movie.characters
    fill_in "Created", with: @movie.created
    fill_in "Director", with: @movie.director
    fill_in "Edited", with: @movie.edited
    fill_in "Episode", with: @movie.episode_id
    fill_in "Opening crwl", with: @movie.opening_crwl
    fill_in "Planets", with: @movie.planets
    fill_in "Producer", with: @movie.producer
    fill_in "Release date", with: @movie.release_date
    fill_in "Species", with: @movie.species
    fill_in "Starships", with: @movie.starships
    fill_in "Title", with: @movie.title
    fill_in "Url", with: @movie.url
    fill_in "Vehicles", with: @movie.vehicles
    click_on "Create Movie"

    assert_text "Movie was successfully created"
    click_on "Back"
  end

  test "updating a Movie" do
    visit movies_url
    click_on "Edit", match: :first

    fill_in "Characters", with: @movie.characters
    fill_in "Created", with: @movie.created
    fill_in "Director", with: @movie.director
    fill_in "Edited", with: @movie.edited
    fill_in "Episode", with: @movie.episode_id
    fill_in "Opening crwl", with: @movie.opening_crwl
    fill_in "Planets", with: @movie.planets
    fill_in "Producer", with: @movie.producer
    fill_in "Release date", with: @movie.release_date
    fill_in "Species", with: @movie.species
    fill_in "Starships", with: @movie.starships
    fill_in "Title", with: @movie.title
    fill_in "Url", with: @movie.url
    fill_in "Vehicles", with: @movie.vehicles
    click_on "Update Movie"

    assert_text "Movie was successfully updated"
    click_on "Back"
  end

  test "destroying a Movie" do
    visit movies_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Movie was successfully destroyed"
  end
end
