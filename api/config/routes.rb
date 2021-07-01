Rails.application.routes.draw do
  namespace 'api' do
    namespace 'v1' do
      get 'stores/search', to: 'stores#search'
      get 'employees/search', to: 'employees#search'
      post 'messages', to: 'messages#create'
    end
  end
end
