# frozen_string_literal: true

Rails.application.routes.draw do
  root 'pages#home'

  get 'initiatives', to: 'pages#initiatives'
  get 'leaders', to: 'pages#leaders'
  get 'support', to: 'pages#support'
  get 'join', to: 'pages#join'
  get 'blog', to: 'pages#blog'
  # get 'social', to: 'pages#social'
  get 'missionaries', to: 'pages#missionaries'

  get 'sponsor_child', to: 'pages#sponsor_child'
  # get 'sponsor_pastor', to: 'pages#sponsor_pastor'

  get "*path", to:  'pages#home'
end
