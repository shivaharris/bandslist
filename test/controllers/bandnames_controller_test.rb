require 'test_helper'

class BandnamesControllerTest < ActionController::TestCase
  setup do
    @bandname = bandnames(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:bandnames)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create bandname" do
    assert_difference('Bandname.count') do
      post :create, bandname: { albumname: @bandname.albumname, bandname: @bandname.bandname }
    end

    assert_redirected_to bandname_path(assigns(:bandname))
  end

  test "should show bandname" do
    get :show, id: @bandname
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @bandname
    assert_response :success
  end

  test "should update bandname" do
    patch :update, id: @bandname, bandname: { albumname: @bandname.albumname, bandname: @bandname.bandname }
    assert_redirected_to bandname_path(assigns(:bandname))
  end

  test "should destroy bandname" do
    assert_difference('Bandname.count', -1) do
      delete :destroy, id: @bandname
    end

    assert_redirected_to bandnames_path
  end
end
