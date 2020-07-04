# frozen_string_literal: true

Rails.application.routes.draw do
  
  root to: "home#index"

  get '/upload/', to: 'home#upload'

end
