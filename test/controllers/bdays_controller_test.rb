require 'test_helper'

class BdaysControllerTest < ActionDispatch::IntegrationTest
  setup do
    @bday = bdays(:one)
  end

  test "should get index" do
    get bdays_url
    assert_response :success
  end

  test "should get new" do
    get new_bday_url
    assert_response :success
  end

  test "should create bday" do
    assert_difference('Bday.count') do
      post bdays_url, params: { bday: { fecha: @bday.fecha, name: @bday.name } }
    end

    assert_redirected_to bday_url(Bday.last)
  end

  test "should show bday" do
    get bday_url(@bday)
    assert_response :success
  end

  test "should get edit" do
    get edit_bday_url(@bday)
    assert_response :success
  end

  test "should update bday" do
    patch bday_url(@bday), params: { bday: { fecha: @bday.fecha, name: @bday.name } }
    assert_redirected_to bday_url(@bday)
  end

  test "should destroy bday" do
    assert_difference('Bday.count', -1) do
      delete bday_url(@bday)
    end

    assert_redirected_to bdays_url
  end
end
