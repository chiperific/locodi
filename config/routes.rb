Rails.application.routes.draw do
  root 'pages#home'

  match 'work', to: 'pages#work', via: :get
  match 'leaders', to: 'pages#leaders', via: :get
  match 'support', to: 'pages#support', via: :get
  match 'join', to: 'pages#join', via: :get
  match 'social', to: 'pages#social', via: :get
  match 'calendar', to: 'pages#calendar', via: :get

  get "*path", to:  'pages#home'
end
