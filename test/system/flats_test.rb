 require "application_system_test_case"

class FlatsTest < ApplicationSystemTestCase
  test "visiting the flats page" do
    visit "/"

    assert_selector "h1", text: "Airbnb Flats"
    assert_selector "li", count: 6
  end

  test "visiting a single flats page" do
    visit "/flats/145"

    assert_selector "h1", text: "Charm at the Steps of the Sacre Coeur/Montmartre"
    assert_selector "h2", text: "164 EUR"
  end
end
