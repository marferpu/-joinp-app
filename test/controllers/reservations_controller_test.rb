require "test_helper"

class ReservationsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get reservations_index_url
    assert_response :success
  end

  test "should get new" do
    get reservations_new_url
    assert_response :success
  end

  test "should get create" do
    get reservations_create_url
    assert_response :success
  end

  test "should get edit" do
    get reservations_edit_url
    assert_response :success
  end

  test "should get update" do
    get reservations_update_url
    assert_response :success
  end

  test "should get show" do
    get reservations_show_url
    assert_response :success
  end

  test "should get destroy" do
    get reservations_destroy_url
    assert_response :success
  end
end
