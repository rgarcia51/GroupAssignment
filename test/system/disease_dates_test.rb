require "application_system_test_case"

class DiseaseDatesTest < ApplicationSystemTestCase
  setup do
    @disease_date = disease_dates(:one)
  end

  test "visiting the index" do
    visit disease_dates_url
    assert_selector "h1", text: "Disease Dates"
  end

  test "creating a Disease date" do
    visit disease_dates_url
    click_on "New Disease Date"

    fill_in "Animal", with: @disease_date.animal_id
    fill_in "Date", with: @disease_date.date
    fill_in "Disease", with: @disease_date.disease_id
    click_on "Create Disease date"

    assert_text "Disease date was successfully created"
    click_on "Back"
  end

  test "updating a Disease date" do
    visit disease_dates_url
    click_on "Edit", match: :first

    fill_in "Animal", with: @disease_date.animal_id
    fill_in "Date", with: @disease_date.date
    fill_in "Disease", with: @disease_date.disease_id
    click_on "Update Disease date"

    assert_text "Disease date was successfully updated"
    click_on "Back"
  end

  test "destroying a Disease date" do
    visit disease_dates_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Disease date was successfully destroyed"
  end
end
