require "test_helper"

class GelatisControllerTest < ActionDispatch::IntegrationTest
  setup do
    @gelati = gelatis(:one)
  end

  test "should get index" do
    get gelatis_url
    assert_response :success
  end

  test "should get new" do
    get new_gelati_url
    assert_response :success
  end

  test "should create gelati" do
    assert_difference('Gelati.count') do
      post gelatis_url, params: { gelati: { calorie: @gelati.calorie, ingredienti: @gelati.ingredienti, nome: @gelati.nome } }
    end

    assert_redirected_to gelati_url(Gelati.last)
  end

  test "should show gelati" do
    get gelati_url(@gelati)
    assert_response :success
  end

  test "should get edit" do
    get edit_gelati_url(@gelati)
    assert_response :success
  end

  test "should update gelati" do
    patch gelati_url(@gelati), params: { gelati: { calorie: @gelati.calorie, ingredienti: @gelati.ingredienti, nome: @gelati.nome } }
    assert_redirected_to gelati_url(@gelati)
  end

  test "should destroy gelati" do
    assert_difference('Gelati.count', -1) do
      delete gelati_url(@gelati)
    end

    assert_redirected_to gelatis_url
  end
end
