Rails.application.routes.draw do
  namespace 'api' do
    namespace 'v1' do
      get 'stores/:keyword', to: 'stores#search'
    end
  end
end
