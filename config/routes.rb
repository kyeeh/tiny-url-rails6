# frozen_string_literal: true

Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  default_url_options host: HOSTNAME

  resources :links do
    # resources: :visits do
    #   get '/:token/info', to: 'visits#show'
    # end
    # member do
    #   get '/:token/info', to: 'links#show'
    # end
  end

  root 'links#new'
  get '/:token', to: 'links#tiny', as: :tiny
  get '/:token/info', to: 'links#visitors'
end
