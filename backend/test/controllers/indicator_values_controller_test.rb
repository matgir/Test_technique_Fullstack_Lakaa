require "test_helper"

class IndicatorValuesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @indicator_value = indicator_values(:one)
  end

  test "should get index" do
    get indicator_values_url, as: :json
    assert_response :success
  end

  test "should create indicator_value" do
    assert_difference("IndicatorValue.count") do
      post indicator_values_url, params: { indicator_value: { value: @indicator_value.value } }, as: :json
    end

    assert_response :created
  end

  test "should show indicator_value" do
    get indicator_value_url(@indicator_value), as: :json
    assert_response :success
  end

  test "should update indicator_value" do
    patch indicator_value_url(@indicator_value), params: { indicator_value: { value: @indicator_value.value } }, as: :json
    assert_response :success
  end

  test "should destroy indicator_value" do
    assert_difference("IndicatorValue.count", -1) do
      delete indicator_value_url(@indicator_value), as: :json
    end

    assert_response :no_content
  end
end
