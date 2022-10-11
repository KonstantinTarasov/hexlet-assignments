# frozen_string_literal: true

Rails.application.routes.draw do
  root 'bulletins#index'
  # BEGIN
  resources :bulletins, only: %i[index show]
  # END
end
