Rails.application.routes.draw do
  root 'pages#home'

  get 'work', to: 'pages#work'
  get 'leaders', to: 'pages#leaders'
  get 'support', to: 'pages#support'
  get 'join', to: 'pages#join'
  get 'social', to: 'pages#social'
  get 'calendar', to: 'pages#calendar'

  get "*path", to:  'pages#home'
end
