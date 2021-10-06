Rails.application.routes.draw do
  namespace 'api' do
    namespace 'v1' do
      resources :users, :products, :boughts, :renteds
      get '/products/user/:id', to: "products#myproducts"
      post '/user/login', to: "users#login"
    end
  end
end
