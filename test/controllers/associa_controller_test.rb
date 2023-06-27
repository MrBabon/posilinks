require "test_helper"

class AssociaControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get associa_index_url
    assert_response :success
  end

  test "should get show" do
    get associa_show_url
    assert_response :success
  end

  test "should get new" do
    get associa_new_url
    assert_response :success
  end

  test "should get create" do
    get associa_create_url
    assert_response :success
  end

  test "should get edit" do
    get associa_edit_url
    assert_response :success
  end

  test "should get update" do
    get associa_update_url
    assert_response :success
  end

  test "should get destroy" do
    get associa_destroy_url
    assert_response :success
  end
end
