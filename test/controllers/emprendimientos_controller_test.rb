require 'test_helper'

class EmprendimientosControllerTest < ActionController::TestCase
  setup do
    @emprendimiento = emprendimientos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:emprendimientos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create emprendimiento" do
    assert_difference('Emprendimiento.count') do
      post :create, emprendimiento: { correo: @emprendimiento.correo, descripcion: @emprendimiento.descripcion, direccion: @emprendimiento.direccion, etiquetas: @emprendimiento.etiquetas, fhorario: @emprendimiento.fhorario, ihoraio: @emprendimiento.ihoraio, lvideo: @emprendimiento.lvideo, pbehance: @emprendimiento.pbehance, pface: @emprendimiento.pface, pinstagram: @emprendimiento.pinstagram, plinkedin: @emprendimiento.plinkedin, ptwitter: @emprendimiento.ptwitter, pweb: @emprendimiento.pweb, pyoutube: @emprendimiento.pyoutube, telefono: @emprendimiento.telefono, titulo: @emprendimiento.titulo }
    end

    assert_redirected_to emprendimiento_path(assigns(:emprendimiento))
  end

  test "should show emprendimiento" do
    get :show, id: @emprendimiento
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @emprendimiento
    assert_response :success
  end

  test "should update emprendimiento" do
    patch :update, id: @emprendimiento, emprendimiento: { correo: @emprendimiento.correo, descripcion: @emprendimiento.descripcion, direccion: @emprendimiento.direccion, etiquetas: @emprendimiento.etiquetas, fhorario: @emprendimiento.fhorario, ihoraio: @emprendimiento.ihoraio, lvideo: @emprendimiento.lvideo, pbehance: @emprendimiento.pbehance, pface: @emprendimiento.pface, pinstagram: @emprendimiento.pinstagram, plinkedin: @emprendimiento.plinkedin, ptwitter: @emprendimiento.ptwitter, pweb: @emprendimiento.pweb, pyoutube: @emprendimiento.pyoutube, telefono: @emprendimiento.telefono, titulo: @emprendimiento.titulo }
    assert_redirected_to emprendimiento_path(assigns(:emprendimiento))
  end

  test "should destroy emprendimiento" do
    assert_difference('Emprendimiento.count', -1) do
      delete :destroy, id: @emprendimiento
    end

    assert_redirected_to emprendimientos_path
  end
end
