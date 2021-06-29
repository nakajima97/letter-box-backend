Rails.application.routes.draw do
  root "stores#index"
  get '/stores/:keyword', to: 'stores#search'
end
