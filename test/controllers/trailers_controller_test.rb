require "test_helper"

class TrailersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @trailer = trailers(:one)
  end

  test "should get index" do
    get trailers_url
    assert_response :success
  end

  test "should get new" do
    get new_trailer_url
    assert_response :success
  end

  test "should create trailer" do
    assert_difference("Trailer.count") do
      post trailers_url, params: { trailer: { dock_number: @trailer.dock_number, dock_side: @trailer.dock_side, live_load: @trailer.live_load, order_number: @trailer.order_number, trailer_number: @trailer.trailer_number, trucking_company: @trailer.trucking_company } }
    end

    assert_redirected_to trailer_url(Trailer.last)
  end

  test "should show trailer" do
    get trailer_url(@trailer)
    assert_response :success
  end

  test "should get edit" do
    get edit_trailer_url(@trailer)
    assert_response :success
  end

  test "should update trailer" do
    patch trailer_url(@trailer), params: { trailer: { dock_number: @trailer.dock_number, dock_side: @trailer.dock_side, live_load: @trailer.live_load, order_number: @trailer.order_number, trailer_number: @trailer.trailer_number, trucking_company: @trailer.trucking_company } }
    assert_redirected_to trailer_url(@trailer)
  end

  test "should destroy trailer" do
    assert_difference("Trailer.count", -1) do
      delete trailer_url(@trailer)
    end

    assert_redirected_to trailers_url
  end
end
