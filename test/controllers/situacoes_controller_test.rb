require "test_helper"

class SituacoesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @situacao = situacoes(:one)
  end

  test "should get index" do
    get situacoes_url, as: :json
    assert_response :success
  end

  test "should create situacao" do
    assert_difference('Situacao.count') do
      post situacoes_url, params: { situacao: { nome: @situacao.nome } }, as: :json
    end

    assert_response 201
  end

  test "should show situacao" do
    get situacao_url(@situacao), as: :json
    assert_response :success
  end

  test "should update situacao" do
    patch situacao_url(@situacao), params: { situacao: { nome: @situacao.nome } }, as: :json
    assert_response 200
  end

  test "should destroy situacao" do
    assert_difference('Situacao.count', -1) do
      delete situacao_url(@situacao), as: :json
    end

    assert_response 204
  end
end
