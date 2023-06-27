require "test_helper"

class AssociasControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get associas_index_url
    assert_response :success
  end

  test "should get show" do
    get associas_show_url
    assert_response :success
  end

  test "should get new" do
    get associas_new_url
    assert_response :success
  end

  test "should get create" do
    get associas_create_url
    assert_response :success
  end

  test "should get edit" do
    get associas_edit_url
    assert_response :success
  end

  test "should get update" do
    get associas_update_url
    assert_response :success
  end

  test "should get destroy" do
    get associas_destroy_url
    assert_response :success
  end
end
