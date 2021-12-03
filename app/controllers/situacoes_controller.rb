class SituacoesController < ApplicationController
  before_action :set_situacao, only: [:show, :update, :destroy]

  # GET /situacoes
  def index
    @situacoes = Situacao.all

    render json: @situacoes
  end

  # GET /situacoes/1
  def show
    render json: @situacao
  end

  # POST /situacoes
  def create
    @situacao = Situacao.new(situacao_params)

    if @situacao.save
      render json: @situacao, status: :created, location: @situacao
    else
      render json: @situacao.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /situacoes/1
  def update
    if @situacao.update(situacao_params)
      render json: @situacao
    else
      render json: @situacao.errors, status: :unprocessable_entity
    end
  end

  # DELETE /situacoes/1
  def destroy
    @situacao.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_situacao
      @situacao = Situacao.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def situacao_params
      params.require(:situacao).permit(:nome)
    end
end
