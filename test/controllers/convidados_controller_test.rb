require "test_helper"

class ConvidadosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @convidado = convidados(:one)
  end

  test "should get index" do
    get convidados_url
    assert_response :success
  end

  test "should get new" do
    get new_convidado_url
    assert_response :success
  end

  test "should create convidado" do
    assert_difference("Convidado.count") do
      post convidados_url, params: { convidado: { descricao: @convidado.descricao, drink_especial: @convidado.drink_especial, leva_bebida: @convidado.leva_bebida, leva_comida: @convidado.leva_comida, nome: @convidado.nome, surfista: @convidado.surfista } }
    end

    assert_redirected_to convidado_url(Convidado.last)
  end

  test "should show convidado" do
    get convidado_url(@convidado)
    assert_response :success
  end

  test "should get edit" do
    get edit_convidado_url(@convidado)
    assert_response :success
  end

  test "should update convidado" do
    patch convidado_url(@convidado), params: { convidado: { descricao: @convidado.descricao, drink_especial: @convidado.drink_especial, leva_bebida: @convidado.leva_bebida, leva_comida: @convidado.leva_comida, nome: @convidado.nome, surfista: @convidado.surfista } }
    assert_redirected_to convidado_url(@convidado)
  end

  test "should destroy convidado" do
    assert_difference("Convidado.count", -1) do
      delete convidado_url(@convidado)
    end

    assert_redirected_to convidados_url
  end
end
