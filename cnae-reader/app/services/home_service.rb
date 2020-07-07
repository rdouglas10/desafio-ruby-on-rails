# frozen_string_literal: true

class HomeService < ApplicationService
  # attr_reader = :archive

  def initialize(uploaded_file)
    @uploaded_file = uploaded_file
  end

  def call
    File.open(@uploaded_file.tempfile.path, 'r+')
    @line = File.readlines(@uploaded_file.tempfile.path)

    n = 0
    while n <= @line.size

      @register = Home.new

      @operations = Transaction.find(tipo = @line[n][0])
      @register[:sinal]      = @operations.sinal == '+' ? 'ENTRADA' : 'SAIDA'
      @register[:tipo]       = @operations.descricao
      @register[:data]       = @line[n][1..8][6..7] + '/' + @line[n][1..8][4..5] + '/' + @line[n][1..8][0..3]
      @register[:valor]      = @line[n][9..18].to_f / 100
      @register[:cpf]        = @line[n][19..29][0..2] + '.' + @line[n][19..29][3..5] + '.' + @line[n][19..29][6..8] + '-' + @line[n][19..29][9..10]
      @register[:cartao]     = @line[n][30..41]
      @register[:hora]       = @line[n][42..47][0..1] + ':' + @line[n][42..47][2..3] + ':' + @line[n][42..47][4..5]
      @register[:dono]       = @line[n][48..61]
      @register[:loja]       = @line[n][62..81]

      @register.save

      n += 1
    end
    true
  end
end
