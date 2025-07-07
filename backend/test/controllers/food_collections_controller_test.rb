require "test_helper"

class FoodCollectionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @food_collection = food_collections(:one)
  end

  test "should get index" do
    get food_collections_url, as: :json
    assert_response :success
  end

  test "should create food_collection" do
    assert_difference("FoodCollection.count") do
      post food_collections_url, params: { food_collection: { association_name: @food_collection.association_name, collect_date: @food_collection.collect_date } }, as: :json
    end

    assert_response :created
  end

  test "should show food_collection" do
    get food_collection_url(@food_collection), as: :json
    assert_response :success
  end

  test "should update food_collection" do
    patch food_collection_url(@food_collection), params: { food_collection: { association_name: @food_collection.association_name, collect_date: @food_collection.collect_date } }, as: :json
    assert_response :success
  end

  test "should destroy food_collection" do
    assert_difference("FoodCollection.count", -1) do
      delete food_collection_url(@food_collection), as: :json
    end

    assert_response :no_content
  end
end
