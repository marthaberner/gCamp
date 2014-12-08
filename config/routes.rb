Rails.application.routes.draw do

  root 'welcome#index'

  get '/faqs' => 'faqs#index'
  get '/about' => 'pages#about', as: 'about'
  get '/terms' => 'pages#terms', as: 'terms'



end
