# frozen_string_literal: true

class CreateTransactions < ActiveRecord::Migration[6.0]
  def change
    create_table :transactions do |t|
      t.integer :tipo
      t.string :descricao
      t.string :natureza
      t.string :sinal

      t.timestamps
    end
  end
end
