Rails.application.routes.draw do
  # root "stores#index"
  # get "v1/stores", to: "stores#index"
  # get 'v1/stores/:keyword', to: 'stores#search'
  namespace 'api' do
    namespace 'v1' do
      get 'stores/:keyword', to: 'stores#search'
    end
  end
end
