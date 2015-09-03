Rails.application.routes.draw do
  root 'pages#home'

  get 'work', to: 'pages#work'
  get 'leaders', to: 'pages#leaders'
  get 'support', to: 'pages#support'
  #post 'support', to: 'pages#support'
  get 'join', to: 'pages#join'
  get 'blog', to: 'pages#blog'
  get 'social', to: 'pages#social'
  get 'calendar', to: 'pages#calendar'

  post 'donate', to: 'pages#donate'

  get 'sponsor', to: 'pages#sponsor'

  get "*path", to:  'pages#home'
end
