Jobo::Application.routes.draw do
  resources :jobs, only:[] do 
    get :latest_active, on: :collection
  end
end
