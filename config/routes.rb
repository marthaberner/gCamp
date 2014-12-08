Rails.application.routes.draw do

  root 'welcome#index'

  get '/faq' => 'faq#index'
  get '/about' => 'pages#about', as: 'about'


end
