# frozen_string_literal: true

class CreateHomes < ActiveRecord::Migration[6.0]
  def change
    create_table :homes do |t|
      t.string  :tipo
      t.string  :sinal
      t.string  :data
      t.float   :valor
      t.string  :cpf
      t.string  :cartao
      t.string  :hora
      t.string  :dono
      t.string  :loja
      # t.references :transaction, null: false, foreign_key: true

      t.timestamps
    end
  end
end
