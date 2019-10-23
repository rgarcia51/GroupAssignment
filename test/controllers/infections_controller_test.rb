require 'test_helper'

class InfectionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @infection = infections(:one)
  end

  test "should get index" do
    get infections_url
    assert_response :success
  end

  test "should get new" do
    get new_infection_url
    assert_response :success
  end

  test "should create infection" do
    assert_difference('Infection.count') do
      post infections_url, params: { infection: { animal_id: @infection.animal_id, disease_id: @infection.disease_id, infectionDate: @infection.infectionDate } }
    end

    assert_redirected_to infection_url(Infection.last)
  end

  test "should show infection" do
    get infection_url(@infection)
    assert_response :success
  end

  test "should get edit" do
    get edit_infection_url(@infection)
    assert_response :success
  end

  test "should update infection" do
    patch infection_url(@infection), params: { infection: { animal_id: @infection.animal_id, disease_id: @infection.disease_id, infectionDate: @infection.infectionDate } }
    assert_redirected_to infection_url(@infection)
  end

  test "should destroy infection" do
    assert_difference('Infection.count', -1) do
      delete infection_url(@infection)
    end

    assert_redirected_to infections_url
  end
end
