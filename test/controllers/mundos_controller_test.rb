require 'test_helper'

class MundosControllerTest < ActionController::TestCase
  setup do
    @mundo = mundos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:mundos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create mundo" do
    assert_difference('Mundo.count') do
      post :create, mundo: { pelicula: @mundo.pelicula, series: @mundo.series, videojuegos: @mundo.videojuegos }
    end

    assert_redirected_to mundo_path(assigns(:mundo))
  end

  test "should show mundo" do
    get :show, id: @mundo
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @mundo
    assert_response :success
  end

  test "should update mundo" do
    patch :update, id: @mundo, mundo: { pelicula: @mundo.pelicula, series: @mundo.series, videojuegos: @mundo.videojuegos }
    assert_redirected_to mundo_path(assigns(:mundo))
  end

  test "should destroy mundo" do
    assert_difference('Mundo.count', -1) do
      delete :destroy, id: @mundo
    end

    assert_redirected_to mundos_path
  end
end
