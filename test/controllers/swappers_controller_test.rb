require "test_helper"

class SwappersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @swapper = swappers(:one)
  end

  test "should get index" do
    get swappers_url
    assert_response :success
  end

  test "should get new" do
    get new_swapper_url
    assert_response :success
  end

  test "should create swapper" do
    assert_difference("Swapper.count") do
      post swappers_url, params: { swapper: { experience: @swapper.experience, name: @swapper.name } }
    end

    assert_redirected_to swapper_url(Swapper.last)
  end

  test "should show swapper" do
    get swapper_url(@swapper)
    assert_response :success
  end

  test "should get edit" do
    get edit_swapper_url(@swapper)
    assert_response :success
  end

  test "should update swapper" do
    patch swapper_url(@swapper), params: { swapper: { experience: @swapper.experience, name: @swapper.name } }
    assert_redirected_to swapper_url(@swapper)
  end

  test "should destroy swapper" do
    assert_difference("Swapper.count", -1) do
      delete swapper_url(@swapper)
    end

    assert_redirected_to swappers_url
  end
end
