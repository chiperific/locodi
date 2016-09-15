Rails.application.routes.draw do
  root 'pages#home'

  get 'work', to: 'pages#work'
  get 'leaders', to: 'pages#leaders'
  get 'support', to: 'pages#support'
  get 'join', to: 'pages#join'
  get 'blog', to: 'pages#blog'
  get 'social', to: 'pages#social'

  get 'sponsor_child', to: 'pages#sponsor_child'
  # get 'sponsor_pastor', to: 'pages#sponsor_pastor'

  get "*path", to:  'pages#home'
end
