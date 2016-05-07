require 'test_helper'

class PelisControllerTest < ActionController::TestCase
  setup do
    @peli = pelis(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:pelis)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create peli" do
    assert_difference('Peli.count') do
      post :create, peli: { Peliculas: @peli.Peliculas }
    end

    assert_redirected_to peli_path(assigns(:peli))
  end

  test "should show peli" do
    get :show, id: @peli
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @peli
    assert_response :success
  end

  test "should update peli" do
    patch :update, id: @peli, peli: { Peliculas: @peli.Peliculas }
    assert_redirected_to peli_path(assigns(:peli))
  end

  test "should destroy peli" do
    assert_difference('Peli.count', -1) do
      delete :destroy, id: @peli
    end

    assert_redirected_to pelis_path
  end
end
