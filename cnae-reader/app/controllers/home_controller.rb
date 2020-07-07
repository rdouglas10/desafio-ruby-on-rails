# frozen_string_literal: true

class HomeController < ApplicationController
  def index
    @infos = Home.order(:loja)
    @sum_entrance = Home.where(sinal: 'ENTRADA').sum('valor')
    @sum_exit     = Home.where(sinal: 'SAIDA').sum('valor')
    @geral_sum    = @sum_entrance - @sum_exit

    @stores = Home.select(:loja).distinct
  end

  def upload
    @service = HomeService.new(params[:archive]).call
    render :index
  end

  def search
    @infos = Home.where('loja LIKE ?', '%' + params['loja'] + '%')
    @data = {}
    n = 0
    @infos.each do |f|
      @data[n] = { "loja": f.loja, "dono": f.dono, "cpf": f.cpf, "tipo": f.tipo,
                   "data": f.data, "valor": f.valor, "cartao": f.cartao, "sinal": f.sinal }
      n += 1
    end
    @sum_entrance = Home.where("sinal = 'ENTRADA' AND loja LIKE ?", '%' + params['loja'] + '%').sum('valor')
    @sum_exit     = Home.where("sinal = 'SAIDA' AND loja LIKE ?", '%' + params['loja'] + '%').sum('valor')
    @geral_sum    = @sum_entrance - @sum_exit
  end
end
