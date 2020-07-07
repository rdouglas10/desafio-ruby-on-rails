# frozen_string_literal: true

Rails.application.routes.draw do
  root to: 'home#index'

  post '/upload', to: 'home#upload'
  get '/search/:loja', to: 'home#search'
  
end
