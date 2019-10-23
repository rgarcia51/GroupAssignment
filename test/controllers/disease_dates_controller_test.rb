require 'test_helper'

class DiseaseDatesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @disease_date = disease_dates(:one)
  end

  test "should get index" do
    get disease_dates_url
    assert_response :success
  end

  test "should get new" do
    get new_disease_date_url
    assert_response :success
  end

  test "should create disease_date" do
    assert_difference('DiseaseDate.count') do
      post disease_dates_url, params: { disease_date: { animal_id: @disease_date.animal_id, date: @disease_date.date, disease_id: @disease_date.disease_id } }
    end

    assert_redirected_to disease_date_url(DiseaseDate.last)
  end

  test "should show disease_date" do
    get disease_date_url(@disease_date)
    assert_response :success
  end

  test "should get edit" do
    get edit_disease_date_url(@disease_date)
    assert_response :success
  end

  test "should update disease_date" do
    patch disease_date_url(@disease_date), params: { disease_date: { animal_id: @disease_date.animal_id, date: @disease_date.date, disease_id: @disease_date.disease_id } }
    assert_redirected_to disease_date_url(@disease_date)
  end

  test "should destroy disease_date" do
    assert_difference('DiseaseDate.count', -1) do
      delete disease_date_url(@disease_date)
    end

    assert_redirected_to disease_dates_url
  end
end
