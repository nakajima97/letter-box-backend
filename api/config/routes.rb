Rails.application.routes.draw do
  devise_for :store_auths
  devise_for :employee_auths, path: 'api/v1/employee', 
    path_names: {
      sign_in: 'login',
      sign_out: 'logout',
      registrations: 'registrations'
    },
    controllers: {
      sessions: 'api/v1/employee_auths/sessions',
      registrations: 'api/v1/employee_auths/registrations'
    }
  namespace 'api' do
    namespace 'v1' do
      get 'stores', to: 'stores#index'
      get 'stores/search', to: 'stores#search'
      get 'employees/search', to: 'employees#search'
      get 'messages', to: 'messages#index'
      post 'messages', to: 'messages#create'
    end
  end
end
