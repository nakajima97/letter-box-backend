Rails.application.routes.draw do
  namespace 'api' do
    namespace 'v1' do
      root 'stores#index'
      get 'stores', to: 'stores#index'
      get 'stores/:keyword', to: 'stores#search'
    end
  end
end
