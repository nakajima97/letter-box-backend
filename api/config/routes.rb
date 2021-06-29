Rails.application.routes.draw do
  namespace 'api' do
    namespace 'v1' do
      get 'stores/search', to: 'stores#search'
    end
  end
end
