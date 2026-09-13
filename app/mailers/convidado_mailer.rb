class ConvidadoMailer < ApplicationMailer
  default from: ENV["GMAIL_USERNAME"]

  def notificacao(convidado)
    @convidado = convidado
    mail(to: ENV["GMAIL_USERNAME"], subject: "Novo convidado confirmado: #{@convidado.nome}")
  end
end