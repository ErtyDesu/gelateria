require "application_system_test_case"

class GelatisTest < ApplicationSystemTestCase
  setup do
    @gelati = gelatis(:one)
  end

  test "visiting the index" do
    visit gelatis_url
    assert_selector "h1", text: "Gelatis"
  end

  test "creating a Gelati" do
    visit gelatis_url
    click_on "New Gelati"

    fill_in "Calorie", with: @gelati.calorie
    fill_in "Ingredienti", with: @gelati.ingredienti
    fill_in "Nome", with: @gelati.nome
    click_on "Create Gelati"

    assert_text "Gelati was successfully created"
    click_on "Back"
  end

  test "updating a Gelati" do
    visit gelatis_url
    click_on "Edit", match: :first

    fill_in "Calorie", with: @gelati.calorie
    fill_in "Ingredienti", with: @gelati.ingredienti
    fill_in "Nome", with: @gelati.nome
    click_on "Update Gelati"

    assert_text "Gelati was successfully updated"
    click_on "Back"
  end

  test "destroying a Gelati" do
    visit gelatis_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Gelati was successfully destroyed"
  end
end
