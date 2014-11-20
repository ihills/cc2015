require 'test_helper'

class AlojamientosControllerTest < ActionController::TestCase
  setup do
    @alojamiento = alojamientos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:alojamientos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create alojamiento" do
    assert_difference('Alojamiento.count') do
      post :create, alojamiento: { coreo: @alojamiento.coreo, id_aloja: @alojamiento.id_aloja, nombre: @alojamiento.nombre, sitio: @alojamiento.sitio, telefono: @alojamiento.telefono }
    end

    assert_redirected_to alojamiento_path(assigns(:alojamiento))
  end

  test "should show alojamiento" do
    get :show, id: @alojamiento
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @alojamiento
    assert_response :success
  end

  test "should update alojamiento" do
    patch :update, id: @alojamiento, alojamiento: { coreo: @alojamiento.coreo, id_aloja: @alojamiento.id_aloja, nombre: @alojamiento.nombre, sitio: @alojamiento.sitio, telefono: @alojamiento.telefono }
    assert_redirected_to alojamiento_path(assigns(:alojamiento))
  end

  test "should destroy alojamiento" do
    assert_difference('Alojamiento.count', -1) do
      delete :destroy, id: @alojamiento
    end

    assert_redirected_to alojamientos_path
  end
end
