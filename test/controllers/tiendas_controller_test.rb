require 'test_helper'

class TiendasControllerTest < ActionController::TestCase
  setup do
    @tienda = tiendas(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:tiendas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create tienda" do
    assert_difference('Tienda.count') do
      post :create, tienda: { correo: @tienda.correo, descripcion: @tienda.descripcion, facebook: @tienda.facebook, id_tienda: @tienda.id_tienda, logo: @tienda.logo, nombre: @tienda.nombre, sitio: @tienda.sitio, telefono: @tienda.telefono, twitter: @tienda.twitter }
    end

    assert_redirected_to tienda_path(assigns(:tienda))
  end

  test "should show tienda" do
    get :show, id: @tienda
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @tienda
    assert_response :success
  end

  test "should update tienda" do
    patch :update, id: @tienda, tienda: { correo: @tienda.correo, descripcion: @tienda.descripcion, facebook: @tienda.facebook, id_tienda: @tienda.id_tienda, logo: @tienda.logo, nombre: @tienda.nombre, sitio: @tienda.sitio, telefono: @tienda.telefono, twitter: @tienda.twitter }
    assert_redirected_to tienda_path(assigns(:tienda))
  end

  test "should destroy tienda" do
    assert_difference('Tienda.count', -1) do
      delete :destroy, id: @tienda
    end

    assert_redirected_to tiendas_path
  end
end
