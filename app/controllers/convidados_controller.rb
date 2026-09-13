class ConvidadosController < ApplicationController
  before_action :set_convidado, only: %i[ show edit update destroy ]

  def index
    @convidados = Convidado.all
  end

  def show
  end

  def new
    @convidado = Convidado.new
  end

  def edit
  end

  def create
    @convidado = Convidado.new(convidado_params)

    if @convidado.save
      ConvidadoMailer.notificacao(@convidado).deliver_later
      redirect_to @convidado, notice: "Presença confirmada! E-mail enviado."
    else
      render :new, status: :unprocessable_entity
    end
  end

  def update
    if @convidado.update(convidado_params)
      redirect_to @convidado, notice: "Convidado atualizado com sucesso."
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @convidado.destroy!
    redirect_to convidados_path, notice: "Convidado removido.", status: :see_other
  end

  private

  def set_convidado
    @convidado = Convidado.find(params[:id])
  end

  def convidado_params
    params.require(:convidado).permit(:nome, :surfista, :leva_bebida, :leva_comida, :descricao, :drink_especial)
  end
end