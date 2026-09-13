class CreateConvidados < ActiveRecord::Migration[8.1]
  def change
    create_table :convidados do |t|
      t.string :nome
      t.boolean :surfista
      t.boolean :leva_bebida
      t.boolean :leva_comida
      t.text :descricao
      t.boolean :drink_especial

      t.timestamps
    end
  end
end
