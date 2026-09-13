class Convidado < ApplicationRecord
  validates :nome, presence: true
  validates :surfista, inclusion: { in: [true, false] }
  validates :drink_especial, inclusion: { in: [true, false] }

  def grupo
    surfista ? "Surfista" : "Motoqueiro"
  end
end