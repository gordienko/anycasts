# frozen_string_literal: true

Rails.application.routes.draw do
  resources :channels, except: %i[edit update destroy] do
    resources :messages, only: %i[create]
  end

  root 'channels#index'
end
